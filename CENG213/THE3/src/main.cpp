#include "BinaryHeap.h"
#include "MeshGraph.h"
#include "ObjLoader.h"
#include <iostream>

#include "BinaryHeap.h"

int main(int argv, const char* argc[])
{   ObjLoader loader;
    loader.LoadObjFile("man-low.obj");

    MeshGraph graph(loader.GetVertexPos(), loader.GetEdges());
    std::vector<Color> out; Color c;
    c.r = 255;
    //graph.PaintInBetweenVertex(out, 2, 34, c);
    graph.PaintInRangeGeodesic(out, 220, c, 4, FILTER_GAUSSIAN, 15.0);
}