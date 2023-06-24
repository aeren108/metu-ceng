#include "MeshGraph.h"
#include "BinaryHeap.h"

// For printing
#include <fstream>
#include <iostream>
#include <sstream>
#include <cmath>
#include <algorithm>

MeshGraph::MeshGraph(const std::vector<Double3>& vertexPositions,
                     const std::vector<IdPair>& edges)
{
    for (int i = 0; i < vertexPositions.size(); ++i) 
    {   Vertex v;
        v.id = i; v.position3D = vertexPositions[i];
        
        vertices.push_back(v);
        adjList.push_back(std::list<Vertex*>());
    }

    for (int i = 0; i < edges.size(); ++i) 
    {   adjList[edges[i].vertexId0].push_back(&vertices[edges[i].vertexId1]);
        adjList[edges[i].vertexId1].push_back(&vertices[edges[i].vertexId0]);
    }


    /*for (int i = 0; i < vertices.size(); ++i) {
        std::sort(adjList[i].begin(), adjList[i].end(), cmp);
    }*/
}

double MeshGraph::AverageDistanceBetweenVertices() const
{   double sum = 0;
    for (int i = 0; i < vertices.size(); ++i) 
    {
        std::list<Vertex*>::const_iterator it;
        for (it = adjList[i].begin(); it != adjList[i].end(); ++it)
        {
            sum += Double3::Distance(vertices[i].position3D, (*it)->position3D);
        }
    }
    
    return (sum / 2) / TotalEdgeCount();
}

double MeshGraph::AverageEdgePerVertex() const
{
    return TotalEdgeCount() / (double) TotalVertexCount();
}

int MeshGraph::TotalVertexCount() const
{
    return vertices.size();
}

int MeshGraph::TotalEdgeCount() const
{   int d_edge = 0;

    for (int i = 0; i < vertices.size(); ++i) 
    {
        std::list<Vertex*>::const_iterator it;
        for (it = adjList[i].begin(); it != adjList[i].end(); ++it)
        {
            d_edge++;
        }
    }
    
    return d_edge / 2;
}

int MeshGraph::VertexEdgeCount(int vertexId) const
{   if (vertexId < 0 || vertexId >= vertices.size()) return -1;
    
    int edges = 0;
    std::list<Vertex*>::const_iterator it;
    for (it = adjList[vertexId].begin(); it != adjList[vertexId].end(); ++it)
    {
        edges++;
    }

    return edges;
}

void MeshGraph::ImmediateNeighbours(std::vector<int>& outVertexIds,
                                    int vertexId) const
{
    int size = VertexEdgeCount(vertexId);
    if (size == -1) {outVertexIds.resize(0); return;}
    outVertexIds.resize(size);

    std::list<Vertex*>::const_iterator it;
    int i = 0;
    for (it = adjList[vertexId].begin(); it != adjList[vertexId].end(); ++it)
    {
        outVertexIds[i] = ((*it)->id);
        ++i;
    }

    std::sort(outVertexIds.begin(), outVertexIds.end());
}

void MeshGraph::PaintInBetweenVertex(std::vector<Color>& outputColorAllVertex,
                                     int vertexIdFrom, int vertexIdTo,
                                     const Color& color) const
{   
    if (vertexIdFrom < 0 || vertexIdFrom >= vertices.size() ||
        vertexIdTo < 0 || vertexIdTo >= vertices.size() ) 
        {outputColorAllVertex.resize(0); return;}

    outputColorAllVertex.resize(vertices.size());
    for (int i = 0; i < vertices.size(); ++i) 
    {   Color c;
        c.r = 0;  c.g = 0; c.b = 0;
        outputColorAllVertex[i] = c;
    
    }

    std::vector<int> prev;
    std::vector<double> dist; 
    BinaryHeap queue;

    prev.resize(vertices.size()); 
    dist.resize(vertices.size());

    for (int i = 0; i < dist.size(); ++i)
    {
        dist[i] = 9999999.0;
        prev[i] = -1;
    }
    dist[vertexIdFrom] = 0;

    for (int i = 0; i < vertices.size(); ++i)
        queue.Add(i, dist[i]);

    std::vector<int> neig;
    while (queue.HeapSize() != 0)
    {   int id;
        double dst;

        queue.PopHeap(id, dst);
        ImmediateNeighbours(neig, id);

        for (int i = 0; i < neig.size(); ++i) {
            double ndst = dst + Double3::Distance(vertices[id].position3D, vertices[neig[i]].position3D);
            if (ndst < dist[neig[i]])
            {   dist[neig[i]] = ndst;
                prev[neig[i]] = id;
                queue.ChangePriority(neig[i], ndst);
            }
        }
        
    }
    int id = vertexIdTo;
    while (id != vertexIdFrom)
    {
        outputColorAllVertex[id] = color; 
        id = prev[id];
    }
    outputColorAllVertex[id] = color;
}

void MeshGraph::PaintInRangeGeodesic(std::vector<Color>& outputColorAllVertex,
                                    int vertexId, const Color& color,
                                    int maxDepth, FilterType type,
                                    double alpha) const
{   if (vertexId < 0 || vertexId >= vertices.size()) 
        {outputColorAllVertex.resize(0); return;}

    outputColorAllVertex.resize(vertices.size());
    for (int i = 0; i < vertices.size(); ++i) 
    {   Color c;
        c.r = 0;  c.g = 0; c.b = 0;
        outputColorAllVertex[i] = c;
    }

    std::vector<double> dist;
    std::vector<int> depth;
    BinaryHeap queue;

    dist.resize(vertices.size());
    depth.resize(vertices.size());
    for (int i = 0; i < depth.size(); ++i) depth[i] = -1;

    depth[vertexId] = 0;
    dist[vertexId] = 0;
    queue.Add(vertexId, vertexId);

    std::vector<int> neig;
    while (queue.HeapSize() != 0) 
    {   int id; double weight;
        queue.PopHeap(id, weight);

        double filterVal = 1;
        double x = dist[id];
        Double3 dcolor;

        if (type == FILTER_BOX) filterVal = (x <= alpha && x >= -alpha) ? 1 : 0;
        else filterVal = std::exp(-x*x / (alpha*alpha));

        dcolor.x = (double) color.r;
        dcolor.y = (double) color.g;
        dcolor.z = (double) color.b;

        dcolor.x *= filterVal;
        dcolor.y *= filterVal;
        dcolor.z *= filterVal;

        outputColorAllVertex[id].r = (unsigned char) dcolor.x;
        outputColorAllVertex[id].g = (unsigned char) dcolor.y;
        outputColorAllVertex[id].b = (unsigned char) dcolor.z;

        std::cout << "Checking vertex :" << id << ", depth: " << depth[id] << " Red: " << outputColorAllVertex[id].r << std::endl;

        if (depth[id] == maxDepth) continue;
        
        ImmediateNeighbours(neig, id);
        for (int i = 0; i < neig.size(); ++i)
        {   if (depth[neig[i]] != -1) continue;
            dist[neig[i]] = dist[id] + Double3::Distance(vertices[id].position3D, vertices[neig[i]].position3D);
            depth[neig[i]] = depth[id] + 1;
            queue.Add(neig[i], neig[i]*(depth[i] + 1)*(depth[i] + 1));
            
            std::cout << "Added neig: " << neig[i] << " dist: " << dist[neig[i]] << " depth: " << depth[neig[i]] << std::endl;
        }

        std::cout << "Depth of 0: " << depth[0] << std::endl;

        std::cout << std::endl;
    }

}

void MeshGraph::PaintInRangeEuclidian(std::vector<Color>& outputColorAllVertex,
                                      int vertexId, const Color& color,
                                      int maxDepth, FilterType type,
                                      double alpha) const
{   
    if (vertexId < 0 || vertexId >= vertices.size()) 
        {outputColorAllVertex.resize(0); return;}

    outputColorAllVertex.resize(vertices.size());
    for (int i = 0; i < vertices.size(); ++i) 
    {   Color c;
        c.r = 0;  c.g = 0; c.b = 0;
        outputColorAllVertex[i] = c;
    }

    std::vector<int> depth;
    BinaryHeap queue;

    depth.resize(vertices.size());
    for (int i = 0; i < depth.size(); ++i) depth[i] = -1;

    depth[vertexId] = 0;
    queue.Add(vertexId, vertexId);

    std::vector<int> neig;
    while (queue.HeapSize() != 0) 
    {   int id; double weight;
        queue.PopHeap(id, weight);

        double filterVal = 1;
        double x = Double3::Distance(vertices[id].position3D, vertices[vertexId].position3D);
        Double3 dcolor;

        if (type == FILTER_BOX) filterVal = (x <= alpha && x >= -alpha) ? 1 : 0;
        else filterVal = std::exp(-x*x / (alpha*alpha));

        dcolor.x = (double) color.r;
        dcolor.y = (double) color.g;
        dcolor.z = (double) color.b;

        dcolor.x *= filterVal;
        dcolor.y *= filterVal;
        dcolor.z *= filterVal;

        outputColorAllVertex[id].r = (int) (dcolor.x);
        outputColorAllVertex[id].g = (int) (dcolor.y);
        outputColorAllVertex[id].b = (int) (dcolor.z);

        if (depth[id] < maxDepth) 
        {
            ImmediateNeighbours(neig, id);
            for (int i = 0; i < neig.size(); ++i)
            {   if (depth[neig[i]] != -1) continue;
                depth[neig[i]] = depth[id] + 1;
                queue.Add(neig[i], neig[i]);
            }
        }
    }
}

void MeshGraph::WriteColorToFile(const std::vector<Color>& colors,
                                 const std::string& fileName)
{
    // IMPLEMENTED
    std::stringstream s;
    for(int i = 0; i < static_cast<int>(colors.size()); i++)
    {
        int r = static_cast<int>(colors[i].r);
        int g = static_cast<int>(colors[i].g);
        int b = static_cast<int>(colors[i].b);

        s << r << ", " << g << ", " << b << "\n";
    }
    std::ofstream f(fileName.c_str());
    f << s.str();
}

void MeshGraph::PrintColorToStdOut(const std::vector<Color>& colors)
{
    // IMPLEMENTED
    for(int i = 0; i < static_cast<int>(colors.size()); i++)
    {
        std::cout << static_cast<int>(colors[i].r) << ", "
                  << static_cast<int>(colors[i].g) << ", "
                  << static_cast<int>(colors[i].b) << "\n";
    }
}