
kernels.o:     file format elf32-i386


Disassembly of section .text:

00000000 <naive_conv>:
       0:	55                   	push   %ebp
       1:	57                   	push   %edi
       2:	56                   	push   %esi
       3:	53                   	push   %ebx
       4:	83 ec 1c             	sub    $0x1c,%esp
       7:	8b 5c 24 30          	mov    0x30(%esp),%ebx
       b:	8d 43 f9             	lea    -0x7(%ebx),%eax
       e:	89 44 24 0c          	mov    %eax,0xc(%esp)
      12:	85 c0                	test   %eax,%eax
      14:	0f 8e dc 01 00 00    	jle    1f6 <naive_conv+0x1f6>
      1a:	8b 74 24 38          	mov    0x38(%esp),%esi
      1e:	8d 04 5b             	lea    (%ebx,%ebx,2),%eax
      21:	31 d2                	xor    %edx,%edx
      23:	8d 3c 00             	lea    (%eax,%eax,1),%edi
      26:	31 c0                	xor    %eax,%eax
      28:	81 c6 80 01 00 00    	add    $0x180,%esi
      2e:	89 34 24             	mov    %esi,(%esp)
      31:	89 de                	mov    %ebx,%esi
      33:	8b 5c 24 34          	mov    0x34(%esp),%ebx
      37:	8d 0c 40             	lea    (%eax,%eax,2),%ecx
      3a:	89 54 24 14          	mov    %edx,0x14(%esp)
      3e:	31 ed                	xor    %ebp,%ebp
      40:	89 44 24 18          	mov    %eax,0x18(%esp)
      44:	8d 1c 4b             	lea    (%ebx,%ecx,2),%ebx
      47:	8b 4c 24 3c          	mov    0x3c(%esp),%ecx
      4b:	89 74 24 30          	mov    %esi,0x30(%esp)
      4f:	8d 0c 81             	lea    (%ecx,%eax,4),%ecx
      52:	89 4c 24 10          	mov    %ecx,0x10(%esp)
      56:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      5d:	8d 76 00             	lea    0x0(%esi),%esi
      60:	83 c5 01             	add    $0x1,%ebp
      63:	89 5c 24 08          	mov    %ebx,0x8(%esp)
      67:	8b 44 24 38          	mov    0x38(%esp),%eax
      6b:	89 da                	mov    %ebx,%edx
      6d:	89 6c 24 04          	mov    %ebp,0x4(%esp)
      71:	31 f6                	xor    %esi,%esi
      73:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      77:	90                   	nop
      78:	0f b7 18             	movzwl (%eax),%ebx
      7b:	0f b7 0a             	movzwl (%edx),%ecx
      7e:	0f b7 68 02          	movzwl 0x2(%eax),%ebp
      82:	0f af cb             	imul   %ebx,%ecx
      85:	0f b7 5a 02          	movzwl 0x2(%edx),%ebx
      89:	0f af dd             	imul   %ebp,%ebx
      8c:	0f b7 68 04          	movzwl 0x4(%eax),%ebp
      90:	01 cb                	add    %ecx,%ebx
      92:	0f b7 4a 04          	movzwl 0x4(%edx),%ecx
      96:	0f af cd             	imul   %ebp,%ecx
      99:	0f b7 68 06          	movzwl 0x6(%eax),%ebp
      9d:	01 d9                	add    %ebx,%ecx
      9f:	0f b7 5a 06          	movzwl 0x6(%edx),%ebx
      a3:	0f af dd             	imul   %ebp,%ebx
      a6:	0f b7 68 08          	movzwl 0x8(%eax),%ebp
      aa:	01 cb                	add    %ecx,%ebx
      ac:	0f b7 4a 08          	movzwl 0x8(%edx),%ecx
      b0:	0f af cd             	imul   %ebp,%ecx
      b3:	0f b7 68 0a          	movzwl 0xa(%eax),%ebp
      b7:	01 d9                	add    %ebx,%ecx
      b9:	0f b7 5a 0a          	movzwl 0xa(%edx),%ebx
      bd:	0f af dd             	imul   %ebp,%ebx
      c0:	0f b7 68 0c          	movzwl 0xc(%eax),%ebp
      c4:	01 cb                	add    %ecx,%ebx
      c6:	0f b7 4a 0c          	movzwl 0xc(%edx),%ecx
      ca:	0f af cd             	imul   %ebp,%ecx
      cd:	0f b7 68 0e          	movzwl 0xe(%eax),%ebp
      d1:	01 d9                	add    %ebx,%ecx
      d3:	0f b7 5a 0e          	movzwl 0xe(%edx),%ebx
      d7:	0f af dd             	imul   %ebp,%ebx
      da:	0f b7 68 10          	movzwl 0x10(%eax),%ebp
      de:	01 cb                	add    %ecx,%ebx
      e0:	0f b7 4a 10          	movzwl 0x10(%edx),%ecx
      e4:	0f af cd             	imul   %ebp,%ecx
      e7:	0f b7 68 12          	movzwl 0x12(%eax),%ebp
      eb:	01 d9                	add    %ebx,%ecx
      ed:	0f b7 5a 12          	movzwl 0x12(%edx),%ebx
      f1:	0f af dd             	imul   %ebp,%ebx
      f4:	0f b7 68 14          	movzwl 0x14(%eax),%ebp
      f8:	01 cb                	add    %ecx,%ebx
      fa:	0f b7 4a 14          	movzwl 0x14(%edx),%ecx
      fe:	0f af cd             	imul   %ebp,%ecx
     101:	0f b7 68 16          	movzwl 0x16(%eax),%ebp
     105:	01 d9                	add    %ebx,%ecx
     107:	0f b7 5a 16          	movzwl 0x16(%edx),%ebx
     10b:	0f af dd             	imul   %ebp,%ebx
     10e:	0f b7 68 18          	movzwl 0x18(%eax),%ebp
     112:	01 cb                	add    %ecx,%ebx
     114:	0f b7 4a 18          	movzwl 0x18(%edx),%ecx
     118:	0f af cd             	imul   %ebp,%ecx
     11b:	0f b7 68 1a          	movzwl 0x1a(%eax),%ebp
     11f:	01 d9                	add    %ebx,%ecx
     121:	0f b7 5a 1a          	movzwl 0x1a(%edx),%ebx
     125:	0f af dd             	imul   %ebp,%ebx
     128:	0f b7 68 1c          	movzwl 0x1c(%eax),%ebp
     12c:	01 cb                	add    %ecx,%ebx
     12e:	0f b7 4a 1c          	movzwl 0x1c(%edx),%ecx
     132:	0f af cd             	imul   %ebp,%ecx
     135:	0f b7 68 1e          	movzwl 0x1e(%eax),%ebp
     139:	01 d9                	add    %ebx,%ecx
     13b:	0f b7 5a 1e          	movzwl 0x1e(%edx),%ebx
     13f:	0f af dd             	imul   %ebp,%ebx
     142:	01 cb                	add    %ecx,%ebx
     144:	0f b7 4a 20          	movzwl 0x20(%edx),%ecx
     148:	0f b7 68 20          	movzwl 0x20(%eax),%ebp
     14c:	0f af cd             	imul   %ebp,%ecx
     14f:	0f b7 68 22          	movzwl 0x22(%eax),%ebp
     153:	01 d9                	add    %ebx,%ecx
     155:	0f b7 5a 22          	movzwl 0x22(%edx),%ebx
     159:	83 c0 30             	add    $0x30,%eax
     15c:	0f af dd             	imul   %ebp,%ebx
     15f:	0f b7 68 f4          	movzwl -0xc(%eax),%ebp
     163:	01 cb                	add    %ecx,%ebx
     165:	0f b7 4a 24          	movzwl 0x24(%edx),%ecx
     169:	0f af cd             	imul   %ebp,%ecx
     16c:	0f b7 68 f6          	movzwl -0xa(%eax),%ebp
     170:	01 d9                	add    %ebx,%ecx
     172:	0f b7 5a 26          	movzwl 0x26(%edx),%ebx
     176:	0f af dd             	imul   %ebp,%ebx
     179:	0f b7 68 f8          	movzwl -0x8(%eax),%ebp
     17d:	01 cb                	add    %ecx,%ebx
     17f:	0f b7 4a 28          	movzwl 0x28(%edx),%ecx
     183:	0f af cd             	imul   %ebp,%ecx
     186:	0f b7 68 fa          	movzwl -0x6(%eax),%ebp
     18a:	01 d9                	add    %ebx,%ecx
     18c:	0f b7 5a 2a          	movzwl 0x2a(%edx),%ebx
     190:	0f af dd             	imul   %ebp,%ebx
     193:	0f b7 68 fc          	movzwl -0x4(%eax),%ebp
     197:	01 cb                	add    %ecx,%ebx
     199:	0f b7 4a 2c          	movzwl 0x2c(%edx),%ecx
     19d:	0f af cd             	imul   %ebp,%ecx
     1a0:	0f b7 68 fe          	movzwl -0x2(%eax),%ebp
     1a4:	01 d9                	add    %ebx,%ecx
     1a6:	0f b7 5a 2e          	movzwl 0x2e(%edx),%ebx
     1aa:	01 fa                	add    %edi,%edx
     1ac:	0f af dd             	imul   %ebp,%ebx
     1af:	01 d9                	add    %ebx,%ecx
     1b1:	01 ce                	add    %ecx,%esi
     1b3:	39 04 24             	cmp    %eax,(%esp)
     1b6:	0f 85 bc fe ff ff    	jne    78 <naive_conv+0x78>
     1bc:	8b 6c 24 04          	mov    0x4(%esp),%ebp
     1c0:	8b 5c 24 08          	mov    0x8(%esp),%ebx
     1c4:	8b 44 24 10          	mov    0x10(%esp),%eax
     1c8:	83 c3 06             	add    $0x6,%ebx
     1cb:	89 74 a8 fc          	mov    %esi,-0x4(%eax,%ebp,4)
     1cf:	39 6c 24 0c          	cmp    %ebp,0xc(%esp)
     1d3:	0f 85 87 fe ff ff    	jne    60 <naive_conv+0x60>
     1d9:	8b 54 24 14          	mov    0x14(%esp),%edx
     1dd:	8b 44 24 18          	mov    0x18(%esp),%eax
     1e1:	8b 74 24 30          	mov    0x30(%esp),%esi
     1e5:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
     1e9:	83 c2 01             	add    $0x1,%edx
     1ec:	01 f0                	add    %esi,%eax
     1ee:	39 da                	cmp    %ebx,%edx
     1f0:	0f 85 3d fe ff ff    	jne    33 <naive_conv+0x33>
     1f6:	83 c4 1c             	add    $0x1c,%esp
     1f9:	5b                   	pop    %ebx
     1fa:	5e                   	pop    %esi
     1fb:	5f                   	pop    %edi
     1fc:	5d                   	pop    %ebp
     1fd:	c3                   	ret
     1fe:	66 90                	xchg   %ax,%ax

00000200 <naive2_conv>:
     200:	55                   	push   %ebp
     201:	57                   	push   %edi
     202:	56                   	push   %esi
     203:	53                   	push   %ebx
     204:	83 ec 20             	sub    $0x20,%esp
     207:	8b 74 24 34          	mov    0x34(%esp),%esi
     20b:	8d 46 f9             	lea    -0x7(%esi),%eax
     20e:	89 44 24 10          	mov    %eax,0x10(%esp)
     212:	85 c0                	test   %eax,%eax
     214:	0f 8e e0 01 00 00    	jle    3fa <naive2_conv+0x1fa>
     21a:	8b 5c 24 3c          	mov    0x3c(%esp),%ebx
     21e:	8d 04 76             	lea    (%esi,%esi,2),%eax
     221:	31 d2                	xor    %edx,%edx
     223:	01 c0                	add    %eax,%eax
     225:	81 c3 80 01 00 00    	add    $0x180,%ebx
     22b:	89 04 24             	mov    %eax,(%esp)
     22e:	31 c0                	xor    %eax,%eax
     230:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     234:	89 f3                	mov    %esi,%ebx
     236:	8b 7c 24 38          	mov    0x38(%esp),%edi
     23a:	8d 0c 40             	lea    (%eax,%eax,2),%ecx
     23d:	89 54 24 18          	mov    %edx,0x18(%esp)
     241:	89 44 24 1c          	mov    %eax,0x1c(%esp)
     245:	8d 34 4f             	lea    (%edi,%ecx,2),%esi
     248:	8b 4c 24 40          	mov    0x40(%esp),%ecx
     24c:	89 5c 24 34          	mov    %ebx,0x34(%esp)
     250:	31 ff                	xor    %edi,%edi
     252:	8d 2c 81             	lea    (%ecx,%eax,4),%ebp
     255:	89 6c 24 14          	mov    %ebp,0x14(%esp)
     259:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     260:	83 c7 01             	add    $0x1,%edi
     263:	89 74 24 0c          	mov    %esi,0xc(%esp)
     267:	8b 44 24 3c          	mov    0x3c(%esp),%eax
     26b:	89 f2                	mov    %esi,%edx
     26d:	89 7c 24 08          	mov    %edi,0x8(%esp)
     271:	31 db                	xor    %ebx,%ebx
     273:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     277:	90                   	nop
     278:	0f b7 08             	movzwl (%eax),%ecx
     27b:	0f b7 32             	movzwl (%edx),%esi
     27e:	0f b7 78 02          	movzwl 0x2(%eax),%edi
     282:	0f b7 68 08          	movzwl 0x8(%eax),%ebp
     286:	0f af f1             	imul   %ecx,%esi
     289:	0f b7 4a 02          	movzwl 0x2(%edx),%ecx
     28d:	0f af cf             	imul   %edi,%ecx
     290:	0f b7 78 04          	movzwl 0x4(%eax),%edi
     294:	01 f1                	add    %esi,%ecx
     296:	0f b7 72 04          	movzwl 0x4(%edx),%esi
     29a:	0f af f7             	imul   %edi,%esi
     29d:	0f b7 7a 06          	movzwl 0x6(%edx),%edi
     2a1:	01 f1                	add    %esi,%ecx
     2a3:	0f b7 70 06          	movzwl 0x6(%eax),%esi
     2a7:	0f af fe             	imul   %esi,%edi
     2aa:	0f b7 72 08          	movzwl 0x8(%edx),%esi
     2ae:	0f af f5             	imul   %ebp,%esi
     2b1:	0f b7 68 0a          	movzwl 0xa(%eax),%ebp
     2b5:	01 fe                	add    %edi,%esi
     2b7:	0f b7 7a 0a          	movzwl 0xa(%edx),%edi
     2bb:	0f af fd             	imul   %ebp,%edi
     2be:	0f b7 68 0e          	movzwl 0xe(%eax),%ebp
     2c2:	01 fe                	add    %edi,%esi
     2c4:	0f b7 7a 0c          	movzwl 0xc(%edx),%edi
     2c8:	01 f1                	add    %esi,%ecx
     2ca:	0f b7 70 0c          	movzwl 0xc(%eax),%esi
     2ce:	0f af fe             	imul   %esi,%edi
     2d1:	0f b7 72 0e          	movzwl 0xe(%edx),%esi
     2d5:	0f af f5             	imul   %ebp,%esi
     2d8:	0f b7 68 10          	movzwl 0x10(%eax),%ebp
     2dc:	01 fe                	add    %edi,%esi
     2de:	0f b7 7a 10          	movzwl 0x10(%edx),%edi
     2e2:	0f af fd             	imul   %ebp,%edi
     2e5:	0f b7 68 14          	movzwl 0x14(%eax),%ebp
     2e9:	01 fe                	add    %edi,%esi
     2eb:	0f b7 7a 12          	movzwl 0x12(%edx),%edi
     2ef:	01 f1                	add    %esi,%ecx
     2f1:	0f b7 70 12          	movzwl 0x12(%eax),%esi
     2f5:	0f af fe             	imul   %esi,%edi
     2f8:	0f b7 72 14          	movzwl 0x14(%edx),%esi
     2fc:	0f af f5             	imul   %ebp,%esi
     2ff:	0f b7 68 16          	movzwl 0x16(%eax),%ebp
     303:	01 fe                	add    %edi,%esi
     305:	0f b7 7a 16          	movzwl 0x16(%edx),%edi
     309:	0f af fd             	imul   %ebp,%edi
     30c:	0f b7 68 1a          	movzwl 0x1a(%eax),%ebp
     310:	01 fe                	add    %edi,%esi
     312:	0f b7 7a 18          	movzwl 0x18(%edx),%edi
     316:	01 f1                	add    %esi,%ecx
     318:	0f b7 70 18          	movzwl 0x18(%eax),%esi
     31c:	0f af fe             	imul   %esi,%edi
     31f:	0f b7 72 1a          	movzwl 0x1a(%edx),%esi
     323:	0f af f5             	imul   %ebp,%esi
     326:	0f b7 68 1c          	movzwl 0x1c(%eax),%ebp
     32a:	01 fe                	add    %edi,%esi
     32c:	0f b7 7a 1c          	movzwl 0x1c(%edx),%edi
     330:	0f af fd             	imul   %ebp,%edi
     333:	01 fe                	add    %edi,%esi
     335:	0f b7 7a 1e          	movzwl 0x1e(%edx),%edi
     339:	01 f1                	add    %esi,%ecx
     33b:	0f b7 70 1e          	movzwl 0x1e(%eax),%esi
     33f:	0f af fe             	imul   %esi,%edi
     342:	0f b7 72 20          	movzwl 0x20(%edx),%esi
     346:	0f b7 68 20          	movzwl 0x20(%eax),%ebp
     34a:	0f af f5             	imul   %ebp,%esi
     34d:	0f b7 68 22          	movzwl 0x22(%eax),%ebp
     351:	01 fe                	add    %edi,%esi
     353:	0f b7 7a 22          	movzwl 0x22(%edx),%edi
     357:	0f af fd             	imul   %ebp,%edi
     35a:	0f b7 68 26          	movzwl 0x26(%eax),%ebp
     35e:	83 c0 30             	add    $0x30,%eax
     361:	01 fe                	add    %edi,%esi
     363:	0f b7 7a 24          	movzwl 0x24(%edx),%edi
     367:	01 f1                	add    %esi,%ecx
     369:	0f b7 70 f4          	movzwl -0xc(%eax),%esi
     36d:	0f af fe             	imul   %esi,%edi
     370:	0f b7 72 26          	movzwl 0x26(%edx),%esi
     374:	0f af f5             	imul   %ebp,%esi
     377:	0f b7 68 f8          	movzwl -0x8(%eax),%ebp
     37b:	01 fe                	add    %edi,%esi
     37d:	0f b7 7a 28          	movzwl 0x28(%edx),%edi
     381:	0f af fd             	imul   %ebp,%edi
     384:	0f b7 68 fc          	movzwl -0x4(%eax),%ebp
     388:	01 fe                	add    %edi,%esi
     38a:	0f b7 7a 2a          	movzwl 0x2a(%edx),%edi
     38e:	01 f1                	add    %esi,%ecx
     390:	0f b7 70 fa          	movzwl -0x6(%eax),%esi
     394:	0f af fe             	imul   %esi,%edi
     397:	0f b7 72 2c          	movzwl 0x2c(%edx),%esi
     39b:	0f af f5             	imul   %ebp,%esi
     39e:	0f b7 68 fe          	movzwl -0x2(%eax),%ebp
     3a2:	01 fe                	add    %edi,%esi
     3a4:	0f b7 7a 2e          	movzwl 0x2e(%edx),%edi
     3a8:	0f af fd             	imul   %ebp,%edi
     3ab:	01 fe                	add    %edi,%esi
     3ad:	01 f1                	add    %esi,%ecx
     3af:	01 cb                	add    %ecx,%ebx
     3b1:	8b 0c 24             	mov    (%esp),%ecx
     3b4:	01 ca                	add    %ecx,%edx
     3b6:	39 44 24 04          	cmp    %eax,0x4(%esp)
     3ba:	0f 85 b8 fe ff ff    	jne    278 <naive2_conv+0x78>
     3c0:	8b 7c 24 08          	mov    0x8(%esp),%edi
     3c4:	8b 74 24 0c          	mov    0xc(%esp),%esi
     3c8:	8b 44 24 14          	mov    0x14(%esp),%eax
     3cc:	83 c6 06             	add    $0x6,%esi
     3cf:	89 5c b8 fc          	mov    %ebx,-0x4(%eax,%edi,4)
     3d3:	39 7c 24 10          	cmp    %edi,0x10(%esp)
     3d7:	0f 85 83 fe ff ff    	jne    260 <naive2_conv+0x60>
     3dd:	8b 54 24 18          	mov    0x18(%esp),%edx
     3e1:	8b 44 24 1c          	mov    0x1c(%esp),%eax
     3e5:	8b 5c 24 34          	mov    0x34(%esp),%ebx
     3e9:	8b 4c 24 10          	mov    0x10(%esp),%ecx
     3ed:	83 c2 01             	add    $0x1,%edx
     3f0:	01 d8                	add    %ebx,%eax
     3f2:	39 ca                	cmp    %ecx,%edx
     3f4:	0f 85 3c fe ff ff    	jne    236 <naive2_conv+0x36>
     3fa:	83 c4 20             	add    $0x20,%esp
     3fd:	5b                   	pop    %ebx
     3fe:	5e                   	pop    %esi
     3ff:	5f                   	pop    %edi
     400:	5d                   	pop    %ebp
     401:	c3                   	ret
     402:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     409:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000410 <forth_conv>:
     410:	55                   	push   %ebp
     411:	57                   	push   %edi
     412:	56                   	push   %esi
     413:	53                   	push   %ebx
     414:	81 ec 38 03 00 00    	sub    $0x338,%esp
     41a:	8b b4 24 4c 03 00 00 	mov    0x34c(%esp),%esi
     421:	8b 84 24 54 03 00 00 	mov    0x354(%esp),%eax
     428:	83 ee 07             	sub    $0x7,%esi
     42b:	89 b4 24 2c 03 00 00 	mov    %esi,0x32c(%esp)
     432:	85 f6                	test   %esi,%esi
     434:	0f 8e f3 17 00 00    	jle    1c2d <forth_conv+0x181d>
     43a:	8b 9c 24 4c 03 00 00 	mov    0x34c(%esp),%ebx
     441:	8b b4 24 50 03 00 00 	mov    0x350(%esp),%esi
     448:	8b 94 24 4c 03 00 00 	mov    0x34c(%esp),%edx
     44f:	8d 0c 9d 00 00 00 00 	lea    0x0(,%ebx,4),%ecx
     456:	8b 9c 24 58 03 00 00 	mov    0x358(%esp),%ebx
     45d:	89 8c 24 34 03 00 00 	mov    %ecx,0x334(%esp)
     464:	8d 14 52             	lea    (%edx,%edx,2),%edx
     467:	8d 5c 0b e4          	lea    -0x1c(%ebx,%ecx,1),%ebx
     46b:	0f b7 48 02          	movzwl 0x2(%eax),%ecx
     46f:	8d 2c 56             	lea    (%esi,%edx,2),%ebp
     472:	89 5c 24 14          	mov    %ebx,0x14(%esp)
     476:	0f b7 18             	movzwl (%eax),%ebx
     479:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
     47d:	0f b7 48 06          	movzwl 0x6(%eax),%ecx
     481:	89 5c 24 18          	mov    %ebx,0x18(%esp)
     485:	0f b7 58 04          	movzwl 0x4(%eax),%ebx
     489:	89 4c 24 24          	mov    %ecx,0x24(%esp)
     48d:	0f b7 48 0a          	movzwl 0xa(%eax),%ecx
     491:	89 5c 24 20          	mov    %ebx,0x20(%esp)
     495:	0f b7 58 08          	movzwl 0x8(%eax),%ebx
     499:	89 4c 24 2c          	mov    %ecx,0x2c(%esp)
     49d:	0f b7 48 0e          	movzwl 0xe(%eax),%ecx
     4a1:	89 5c 24 28          	mov    %ebx,0x28(%esp)
     4a5:	0f b7 58 0c          	movzwl 0xc(%eax),%ebx
     4a9:	89 4c 24 34          	mov    %ecx,0x34(%esp)
     4ad:	0f b7 48 12          	movzwl 0x12(%eax),%ecx
     4b1:	89 5c 24 30          	mov    %ebx,0x30(%esp)
     4b5:	0f b7 58 10          	movzwl 0x10(%eax),%ebx
     4b9:	89 4c 24 3c          	mov    %ecx,0x3c(%esp)
     4bd:	0f b7 48 16          	movzwl 0x16(%eax),%ecx
     4c1:	89 5c 24 38          	mov    %ebx,0x38(%esp)
     4c5:	0f b7 58 14          	movzwl 0x14(%eax),%ebx
     4c9:	89 4c 24 44          	mov    %ecx,0x44(%esp)
     4cd:	89 5c 24 40          	mov    %ebx,0x40(%esp)
     4d1:	0f b7 58 18          	movzwl 0x18(%eax),%ebx
     4d5:	89 5c 24 48          	mov    %ebx,0x48(%esp)
     4d9:	0f b7 48 1a          	movzwl 0x1a(%eax),%ecx
     4dd:	0f b7 58 1c          	movzwl 0x1c(%eax),%ebx
     4e1:	89 4c 24 4c          	mov    %ecx,0x4c(%esp)
     4e5:	0f b7 48 1e          	movzwl 0x1e(%eax),%ecx
     4e9:	89 5c 24 50          	mov    %ebx,0x50(%esp)
     4ed:	0f b7 58 20          	movzwl 0x20(%eax),%ebx
     4f1:	89 4c 24 54          	mov    %ecx,0x54(%esp)
     4f5:	0f b7 48 22          	movzwl 0x22(%eax),%ecx
     4f9:	89 5c 24 58          	mov    %ebx,0x58(%esp)
     4fd:	0f b7 58 24          	movzwl 0x24(%eax),%ebx
     501:	89 4c 24 5c          	mov    %ecx,0x5c(%esp)
     505:	0f b7 48 26          	movzwl 0x26(%eax),%ecx
     509:	89 5c 24 60          	mov    %ebx,0x60(%esp)
     50d:	0f b7 58 28          	movzwl 0x28(%eax),%ebx
     511:	89 4c 24 64          	mov    %ecx,0x64(%esp)
     515:	0f b7 48 2a          	movzwl 0x2a(%eax),%ecx
     519:	89 5c 24 68          	mov    %ebx,0x68(%esp)
     51d:	0f b7 58 2c          	movzwl 0x2c(%eax),%ebx
     521:	89 4c 24 6c          	mov    %ecx,0x6c(%esp)
     525:	0f b7 48 2e          	movzwl 0x2e(%eax),%ecx
     529:	89 5c 24 70          	mov    %ebx,0x70(%esp)
     52d:	0f b7 58 30          	movzwl 0x30(%eax),%ebx
     531:	89 4c 24 74          	mov    %ecx,0x74(%esp)
     535:	0f b7 48 32          	movzwl 0x32(%eax),%ecx
     539:	89 5c 24 78          	mov    %ebx,0x78(%esp)
     53d:	0f b7 58 34          	movzwl 0x34(%eax),%ebx
     541:	89 4c 24 7c          	mov    %ecx,0x7c(%esp)
     545:	0f b7 48 36          	movzwl 0x36(%eax),%ecx
     549:	89 9c 24 80 00 00 00 	mov    %ebx,0x80(%esp)
     550:	0f b7 58 38          	movzwl 0x38(%eax),%ebx
     554:	89 8c 24 84 00 00 00 	mov    %ecx,0x84(%esp)
     55b:	89 9c 24 88 00 00 00 	mov    %ebx,0x88(%esp)
     562:	0f b7 48 3a          	movzwl 0x3a(%eax),%ecx
     566:	0f b7 58 3c          	movzwl 0x3c(%eax),%ebx
     56a:	89 8c 24 8c 00 00 00 	mov    %ecx,0x8c(%esp)
     571:	0f b7 48 3e          	movzwl 0x3e(%eax),%ecx
     575:	89 9c 24 90 00 00 00 	mov    %ebx,0x90(%esp)
     57c:	0f b7 58 40          	movzwl 0x40(%eax),%ebx
     580:	89 8c 24 94 00 00 00 	mov    %ecx,0x94(%esp)
     587:	0f b7 48 42          	movzwl 0x42(%eax),%ecx
     58b:	89 9c 24 98 00 00 00 	mov    %ebx,0x98(%esp)
     592:	0f b7 58 44          	movzwl 0x44(%eax),%ebx
     596:	89 8c 24 9c 00 00 00 	mov    %ecx,0x9c(%esp)
     59d:	0f b7 48 46          	movzwl 0x46(%eax),%ecx
     5a1:	89 9c 24 a0 00 00 00 	mov    %ebx,0xa0(%esp)
     5a8:	0f b7 58 48          	movzwl 0x48(%eax),%ebx
     5ac:	89 8c 24 a4 00 00 00 	mov    %ecx,0xa4(%esp)
     5b3:	0f b7 48 4a          	movzwl 0x4a(%eax),%ecx
     5b7:	89 9c 24 a8 00 00 00 	mov    %ebx,0xa8(%esp)
     5be:	0f b7 58 4c          	movzwl 0x4c(%eax),%ebx
     5c2:	89 8c 24 ac 00 00 00 	mov    %ecx,0xac(%esp)
     5c9:	0f b7 48 4e          	movzwl 0x4e(%eax),%ecx
     5cd:	89 9c 24 b0 00 00 00 	mov    %ebx,0xb0(%esp)
     5d4:	0f b7 58 50          	movzwl 0x50(%eax),%ebx
     5d8:	89 8c 24 b4 00 00 00 	mov    %ecx,0xb4(%esp)
     5df:	0f b7 48 52          	movzwl 0x52(%eax),%ecx
     5e3:	89 9c 24 b8 00 00 00 	mov    %ebx,0xb8(%esp)
     5ea:	0f b7 58 54          	movzwl 0x54(%eax),%ebx
     5ee:	89 8c 24 bc 00 00 00 	mov    %ecx,0xbc(%esp)
     5f5:	0f b7 48 56          	movzwl 0x56(%eax),%ecx
     5f9:	89 9c 24 c0 00 00 00 	mov    %ebx,0xc0(%esp)
     600:	0f b7 58 58          	movzwl 0x58(%eax),%ebx
     604:	89 8c 24 c4 00 00 00 	mov    %ecx,0xc4(%esp)
     60b:	89 9c 24 c8 00 00 00 	mov    %ebx,0xc8(%esp)
     612:	0f b7 48 5a          	movzwl 0x5a(%eax),%ecx
     616:	0f b7 58 5c          	movzwl 0x5c(%eax),%ebx
     61a:	89 8c 24 cc 00 00 00 	mov    %ecx,0xcc(%esp)
     621:	0f b7 48 5e          	movzwl 0x5e(%eax),%ecx
     625:	89 9c 24 d0 00 00 00 	mov    %ebx,0xd0(%esp)
     62c:	0f b7 58 60          	movzwl 0x60(%eax),%ebx
     630:	89 8c 24 d4 00 00 00 	mov    %ecx,0xd4(%esp)
     637:	0f b7 48 62          	movzwl 0x62(%eax),%ecx
     63b:	89 9c 24 d8 00 00 00 	mov    %ebx,0xd8(%esp)
     642:	0f b7 58 64          	movzwl 0x64(%eax),%ebx
     646:	89 8c 24 dc 00 00 00 	mov    %ecx,0xdc(%esp)
     64d:	0f b7 48 66          	movzwl 0x66(%eax),%ecx
     651:	89 9c 24 e0 00 00 00 	mov    %ebx,0xe0(%esp)
     658:	0f b7 58 68          	movzwl 0x68(%eax),%ebx
     65c:	89 8c 24 e4 00 00 00 	mov    %ecx,0xe4(%esp)
     663:	0f b7 48 6a          	movzwl 0x6a(%eax),%ecx
     667:	89 9c 24 e8 00 00 00 	mov    %ebx,0xe8(%esp)
     66e:	0f b7 58 6c          	movzwl 0x6c(%eax),%ebx
     672:	89 8c 24 ec 00 00 00 	mov    %ecx,0xec(%esp)
     679:	0f b7 48 6e          	movzwl 0x6e(%eax),%ecx
     67d:	89 9c 24 f0 00 00 00 	mov    %ebx,0xf0(%esp)
     684:	0f b7 58 70          	movzwl 0x70(%eax),%ebx
     688:	89 8c 24 f4 00 00 00 	mov    %ecx,0xf4(%esp)
     68f:	0f b7 48 72          	movzwl 0x72(%eax),%ecx
     693:	89 9c 24 f8 00 00 00 	mov    %ebx,0xf8(%esp)
     69a:	0f b7 58 74          	movzwl 0x74(%eax),%ebx
     69e:	89 8c 24 fc 00 00 00 	mov    %ecx,0xfc(%esp)
     6a5:	0f b7 48 76          	movzwl 0x76(%eax),%ecx
     6a9:	89 9c 24 00 01 00 00 	mov    %ebx,0x100(%esp)
     6b0:	0f b7 58 78          	movzwl 0x78(%eax),%ebx
     6b4:	89 8c 24 04 01 00 00 	mov    %ecx,0x104(%esp)
     6bb:	89 9c 24 08 01 00 00 	mov    %ebx,0x108(%esp)
     6c2:	0f b7 48 7a          	movzwl 0x7a(%eax),%ecx
     6c6:	0f b7 58 7c          	movzwl 0x7c(%eax),%ebx
     6ca:	89 8c 24 0c 01 00 00 	mov    %ecx,0x10c(%esp)
     6d1:	0f b7 48 7e          	movzwl 0x7e(%eax),%ecx
     6d5:	89 9c 24 10 01 00 00 	mov    %ebx,0x110(%esp)
     6dc:	0f b7 98 80 00 00 00 	movzwl 0x80(%eax),%ebx
     6e3:	89 8c 24 14 01 00 00 	mov    %ecx,0x114(%esp)
     6ea:	0f b7 88 82 00 00 00 	movzwl 0x82(%eax),%ecx
     6f1:	89 9c 24 18 01 00 00 	mov    %ebx,0x118(%esp)
     6f8:	0f b7 98 84 00 00 00 	movzwl 0x84(%eax),%ebx
     6ff:	89 8c 24 1c 01 00 00 	mov    %ecx,0x11c(%esp)
     706:	0f b7 88 86 00 00 00 	movzwl 0x86(%eax),%ecx
     70d:	89 9c 24 20 01 00 00 	mov    %ebx,0x120(%esp)
     714:	0f b7 98 88 00 00 00 	movzwl 0x88(%eax),%ebx
     71b:	89 8c 24 24 01 00 00 	mov    %ecx,0x124(%esp)
     722:	0f b7 88 8a 00 00 00 	movzwl 0x8a(%eax),%ecx
     729:	89 9c 24 28 01 00 00 	mov    %ebx,0x128(%esp)
     730:	0f b7 98 8c 00 00 00 	movzwl 0x8c(%eax),%ebx
     737:	89 8c 24 2c 01 00 00 	mov    %ecx,0x12c(%esp)
     73e:	0f b7 88 8e 00 00 00 	movzwl 0x8e(%eax),%ecx
     745:	89 9c 24 30 01 00 00 	mov    %ebx,0x130(%esp)
     74c:	0f b7 98 90 00 00 00 	movzwl 0x90(%eax),%ebx
     753:	89 8c 24 34 01 00 00 	mov    %ecx,0x134(%esp)
     75a:	0f b7 88 92 00 00 00 	movzwl 0x92(%eax),%ecx
     761:	89 9c 24 38 01 00 00 	mov    %ebx,0x138(%esp)
     768:	0f b7 98 94 00 00 00 	movzwl 0x94(%eax),%ebx
     76f:	89 8c 24 3c 01 00 00 	mov    %ecx,0x13c(%esp)
     776:	0f b7 88 96 00 00 00 	movzwl 0x96(%eax),%ecx
     77d:	89 9c 24 40 01 00 00 	mov    %ebx,0x140(%esp)
     784:	0f b7 98 98 00 00 00 	movzwl 0x98(%eax),%ebx
     78b:	89 8c 24 44 01 00 00 	mov    %ecx,0x144(%esp)
     792:	89 9c 24 48 01 00 00 	mov    %ebx,0x148(%esp)
     799:	0f b7 88 9a 00 00 00 	movzwl 0x9a(%eax),%ecx
     7a0:	0f b7 98 9c 00 00 00 	movzwl 0x9c(%eax),%ebx
     7a7:	89 8c 24 4c 01 00 00 	mov    %ecx,0x14c(%esp)
     7ae:	0f b7 88 9e 00 00 00 	movzwl 0x9e(%eax),%ecx
     7b5:	89 9c 24 50 01 00 00 	mov    %ebx,0x150(%esp)
     7bc:	0f b7 98 a0 00 00 00 	movzwl 0xa0(%eax),%ebx
     7c3:	89 8c 24 54 01 00 00 	mov    %ecx,0x154(%esp)
     7ca:	0f b7 88 a2 00 00 00 	movzwl 0xa2(%eax),%ecx
     7d1:	89 9c 24 58 01 00 00 	mov    %ebx,0x158(%esp)
     7d8:	0f b7 98 a4 00 00 00 	movzwl 0xa4(%eax),%ebx
     7df:	89 8c 24 5c 01 00 00 	mov    %ecx,0x15c(%esp)
     7e6:	0f b7 88 a6 00 00 00 	movzwl 0xa6(%eax),%ecx
     7ed:	89 9c 24 60 01 00 00 	mov    %ebx,0x160(%esp)
     7f4:	0f b7 98 a8 00 00 00 	movzwl 0xa8(%eax),%ebx
     7fb:	89 8c 24 64 01 00 00 	mov    %ecx,0x164(%esp)
     802:	0f b7 88 aa 00 00 00 	movzwl 0xaa(%eax),%ecx
     809:	89 9c 24 68 01 00 00 	mov    %ebx,0x168(%esp)
     810:	0f b7 98 ac 00 00 00 	movzwl 0xac(%eax),%ebx
     817:	89 8c 24 6c 01 00 00 	mov    %ecx,0x16c(%esp)
     81e:	0f b7 88 ae 00 00 00 	movzwl 0xae(%eax),%ecx
     825:	89 9c 24 70 01 00 00 	mov    %ebx,0x170(%esp)
     82c:	0f b7 98 b0 00 00 00 	movzwl 0xb0(%eax),%ebx
     833:	89 8c 24 74 01 00 00 	mov    %ecx,0x174(%esp)
     83a:	0f b7 88 b2 00 00 00 	movzwl 0xb2(%eax),%ecx
     841:	89 9c 24 78 01 00 00 	mov    %ebx,0x178(%esp)
     848:	0f b7 98 b4 00 00 00 	movzwl 0xb4(%eax),%ebx
     84f:	89 8c 24 7c 01 00 00 	mov    %ecx,0x17c(%esp)
     856:	0f b7 88 b6 00 00 00 	movzwl 0xb6(%eax),%ecx
     85d:	89 9c 24 80 01 00 00 	mov    %ebx,0x180(%esp)
     864:	0f b7 98 b8 00 00 00 	movzwl 0xb8(%eax),%ebx
     86b:	89 8c 24 84 01 00 00 	mov    %ecx,0x184(%esp)
     872:	89 9c 24 88 01 00 00 	mov    %ebx,0x188(%esp)
     879:	0f b7 88 ba 00 00 00 	movzwl 0xba(%eax),%ecx
     880:	0f b7 98 bc 00 00 00 	movzwl 0xbc(%eax),%ebx
     887:	89 8c 24 8c 01 00 00 	mov    %ecx,0x18c(%esp)
     88e:	0f b7 88 be 00 00 00 	movzwl 0xbe(%eax),%ecx
     895:	89 9c 24 90 01 00 00 	mov    %ebx,0x190(%esp)
     89c:	0f b7 98 c0 00 00 00 	movzwl 0xc0(%eax),%ebx
     8a3:	89 8c 24 94 01 00 00 	mov    %ecx,0x194(%esp)
     8aa:	0f b7 88 c2 00 00 00 	movzwl 0xc2(%eax),%ecx
     8b1:	89 9c 24 98 01 00 00 	mov    %ebx,0x198(%esp)
     8b8:	0f b7 98 c4 00 00 00 	movzwl 0xc4(%eax),%ebx
     8bf:	89 8c 24 9c 01 00 00 	mov    %ecx,0x19c(%esp)
     8c6:	0f b7 88 c6 00 00 00 	movzwl 0xc6(%eax),%ecx
     8cd:	89 9c 24 a0 01 00 00 	mov    %ebx,0x1a0(%esp)
     8d4:	0f b7 98 c8 00 00 00 	movzwl 0xc8(%eax),%ebx
     8db:	89 8c 24 a4 01 00 00 	mov    %ecx,0x1a4(%esp)
     8e2:	0f b7 88 ca 00 00 00 	movzwl 0xca(%eax),%ecx
     8e9:	89 9c 24 a8 01 00 00 	mov    %ebx,0x1a8(%esp)
     8f0:	0f b7 98 cc 00 00 00 	movzwl 0xcc(%eax),%ebx
     8f7:	89 8c 24 ac 01 00 00 	mov    %ecx,0x1ac(%esp)
     8fe:	0f b7 88 ce 00 00 00 	movzwl 0xce(%eax),%ecx
     905:	89 9c 24 b0 01 00 00 	mov    %ebx,0x1b0(%esp)
     90c:	0f b7 98 d0 00 00 00 	movzwl 0xd0(%eax),%ebx
     913:	89 8c 24 b4 01 00 00 	mov    %ecx,0x1b4(%esp)
     91a:	0f b7 88 d2 00 00 00 	movzwl 0xd2(%eax),%ecx
     921:	89 9c 24 b8 01 00 00 	mov    %ebx,0x1b8(%esp)
     928:	0f b7 98 d4 00 00 00 	movzwl 0xd4(%eax),%ebx
     92f:	89 8c 24 bc 01 00 00 	mov    %ecx,0x1bc(%esp)
     936:	0f b7 88 d6 00 00 00 	movzwl 0xd6(%eax),%ecx
     93d:	89 9c 24 c0 01 00 00 	mov    %ebx,0x1c0(%esp)
     944:	0f b7 98 d8 00 00 00 	movzwl 0xd8(%eax),%ebx
     94b:	89 8c 24 c4 01 00 00 	mov    %ecx,0x1c4(%esp)
     952:	89 9c 24 c8 01 00 00 	mov    %ebx,0x1c8(%esp)
     959:	0f b7 88 da 00 00 00 	movzwl 0xda(%eax),%ecx
     960:	0f b7 98 dc 00 00 00 	movzwl 0xdc(%eax),%ebx
     967:	89 8c 24 cc 01 00 00 	mov    %ecx,0x1cc(%esp)
     96e:	0f b7 88 de 00 00 00 	movzwl 0xde(%eax),%ecx
     975:	89 9c 24 d0 01 00 00 	mov    %ebx,0x1d0(%esp)
     97c:	0f b7 98 e0 00 00 00 	movzwl 0xe0(%eax),%ebx
     983:	89 8c 24 d4 01 00 00 	mov    %ecx,0x1d4(%esp)
     98a:	0f b7 88 e2 00 00 00 	movzwl 0xe2(%eax),%ecx
     991:	89 9c 24 d8 01 00 00 	mov    %ebx,0x1d8(%esp)
     998:	0f b7 98 e4 00 00 00 	movzwl 0xe4(%eax),%ebx
     99f:	89 8c 24 dc 01 00 00 	mov    %ecx,0x1dc(%esp)
     9a6:	0f b7 88 e6 00 00 00 	movzwl 0xe6(%eax),%ecx
     9ad:	89 9c 24 e0 01 00 00 	mov    %ebx,0x1e0(%esp)
     9b4:	0f b7 98 e8 00 00 00 	movzwl 0xe8(%eax),%ebx
     9bb:	89 8c 24 e4 01 00 00 	mov    %ecx,0x1e4(%esp)
     9c2:	0f b7 88 ea 00 00 00 	movzwl 0xea(%eax),%ecx
     9c9:	89 9c 24 e8 01 00 00 	mov    %ebx,0x1e8(%esp)
     9d0:	0f b7 98 ec 00 00 00 	movzwl 0xec(%eax),%ebx
     9d7:	89 8c 24 ec 01 00 00 	mov    %ecx,0x1ec(%esp)
     9de:	0f b7 88 ee 00 00 00 	movzwl 0xee(%eax),%ecx
     9e5:	89 9c 24 f0 01 00 00 	mov    %ebx,0x1f0(%esp)
     9ec:	0f b7 98 f0 00 00 00 	movzwl 0xf0(%eax),%ebx
     9f3:	89 8c 24 f4 01 00 00 	mov    %ecx,0x1f4(%esp)
     9fa:	0f b7 88 f2 00 00 00 	movzwl 0xf2(%eax),%ecx
     a01:	89 9c 24 f8 01 00 00 	mov    %ebx,0x1f8(%esp)
     a08:	0f b7 98 f4 00 00 00 	movzwl 0xf4(%eax),%ebx
     a0f:	89 8c 24 fc 01 00 00 	mov    %ecx,0x1fc(%esp)
     a16:	0f b7 88 f6 00 00 00 	movzwl 0xf6(%eax),%ecx
     a1d:	89 9c 24 00 02 00 00 	mov    %ebx,0x200(%esp)
     a24:	0f b7 98 f8 00 00 00 	movzwl 0xf8(%eax),%ebx
     a2b:	89 8c 24 04 02 00 00 	mov    %ecx,0x204(%esp)
     a32:	89 9c 24 08 02 00 00 	mov    %ebx,0x208(%esp)
     a39:	0f b7 88 fa 00 00 00 	movzwl 0xfa(%eax),%ecx
     a40:	0f b7 98 fc 00 00 00 	movzwl 0xfc(%eax),%ebx
     a47:	89 8c 24 0c 02 00 00 	mov    %ecx,0x20c(%esp)
     a4e:	0f b7 88 fe 00 00 00 	movzwl 0xfe(%eax),%ecx
     a55:	89 9c 24 10 02 00 00 	mov    %ebx,0x210(%esp)
     a5c:	0f b7 98 00 01 00 00 	movzwl 0x100(%eax),%ebx
     a63:	89 8c 24 14 02 00 00 	mov    %ecx,0x214(%esp)
     a6a:	0f b7 88 02 01 00 00 	movzwl 0x102(%eax),%ecx
     a71:	89 9c 24 18 02 00 00 	mov    %ebx,0x218(%esp)
     a78:	0f b7 98 04 01 00 00 	movzwl 0x104(%eax),%ebx
     a7f:	89 8c 24 1c 02 00 00 	mov    %ecx,0x21c(%esp)
     a86:	0f b7 88 06 01 00 00 	movzwl 0x106(%eax),%ecx
     a8d:	89 9c 24 20 02 00 00 	mov    %ebx,0x220(%esp)
     a94:	0f b7 98 08 01 00 00 	movzwl 0x108(%eax),%ebx
     a9b:	89 8c 24 24 02 00 00 	mov    %ecx,0x224(%esp)
     aa2:	0f b7 88 0a 01 00 00 	movzwl 0x10a(%eax),%ecx
     aa9:	89 9c 24 28 02 00 00 	mov    %ebx,0x228(%esp)
     ab0:	0f b7 98 0c 01 00 00 	movzwl 0x10c(%eax),%ebx
     ab7:	89 8c 24 2c 02 00 00 	mov    %ecx,0x22c(%esp)
     abe:	0f b7 88 0e 01 00 00 	movzwl 0x10e(%eax),%ecx
     ac5:	89 9c 24 30 02 00 00 	mov    %ebx,0x230(%esp)
     acc:	0f b7 98 10 01 00 00 	movzwl 0x110(%eax),%ebx
     ad3:	89 8c 24 34 02 00 00 	mov    %ecx,0x234(%esp)
     ada:	0f b7 88 12 01 00 00 	movzwl 0x112(%eax),%ecx
     ae1:	89 9c 24 38 02 00 00 	mov    %ebx,0x238(%esp)
     ae8:	0f b7 98 14 01 00 00 	movzwl 0x114(%eax),%ebx
     aef:	89 8c 24 3c 02 00 00 	mov    %ecx,0x23c(%esp)
     af6:	0f b7 88 16 01 00 00 	movzwl 0x116(%eax),%ecx
     afd:	89 9c 24 40 02 00 00 	mov    %ebx,0x240(%esp)
     b04:	0f b7 98 18 01 00 00 	movzwl 0x118(%eax),%ebx
     b0b:	89 8c 24 44 02 00 00 	mov    %ecx,0x244(%esp)
     b12:	89 9c 24 48 02 00 00 	mov    %ebx,0x248(%esp)
     b19:	0f b7 88 1a 01 00 00 	movzwl 0x11a(%eax),%ecx
     b20:	0f b7 98 1c 01 00 00 	movzwl 0x11c(%eax),%ebx
     b27:	89 8c 24 4c 02 00 00 	mov    %ecx,0x24c(%esp)
     b2e:	0f b7 88 1e 01 00 00 	movzwl 0x11e(%eax),%ecx
     b35:	89 9c 24 50 02 00 00 	mov    %ebx,0x250(%esp)
     b3c:	0f b7 98 20 01 00 00 	movzwl 0x120(%eax),%ebx
     b43:	89 8c 24 54 02 00 00 	mov    %ecx,0x254(%esp)
     b4a:	0f b7 88 22 01 00 00 	movzwl 0x122(%eax),%ecx
     b51:	89 9c 24 58 02 00 00 	mov    %ebx,0x258(%esp)
     b58:	0f b7 98 24 01 00 00 	movzwl 0x124(%eax),%ebx
     b5f:	89 8c 24 5c 02 00 00 	mov    %ecx,0x25c(%esp)
     b66:	0f b7 88 26 01 00 00 	movzwl 0x126(%eax),%ecx
     b6d:	89 9c 24 60 02 00 00 	mov    %ebx,0x260(%esp)
     b74:	0f b7 98 28 01 00 00 	movzwl 0x128(%eax),%ebx
     b7b:	89 8c 24 64 02 00 00 	mov    %ecx,0x264(%esp)
     b82:	0f b7 88 2a 01 00 00 	movzwl 0x12a(%eax),%ecx
     b89:	89 9c 24 68 02 00 00 	mov    %ebx,0x268(%esp)
     b90:	0f b7 98 2c 01 00 00 	movzwl 0x12c(%eax),%ebx
     b97:	89 8c 24 6c 02 00 00 	mov    %ecx,0x26c(%esp)
     b9e:	0f b7 88 2e 01 00 00 	movzwl 0x12e(%eax),%ecx
     ba5:	89 9c 24 70 02 00 00 	mov    %ebx,0x270(%esp)
     bac:	0f b7 98 30 01 00 00 	movzwl 0x130(%eax),%ebx
     bb3:	89 8c 24 74 02 00 00 	mov    %ecx,0x274(%esp)
     bba:	0f b7 88 32 01 00 00 	movzwl 0x132(%eax),%ecx
     bc1:	89 9c 24 78 02 00 00 	mov    %ebx,0x278(%esp)
     bc8:	0f b7 98 34 01 00 00 	movzwl 0x134(%eax),%ebx
     bcf:	89 8c 24 7c 02 00 00 	mov    %ecx,0x27c(%esp)
     bd6:	0f b7 88 36 01 00 00 	movzwl 0x136(%eax),%ecx
     bdd:	89 9c 24 80 02 00 00 	mov    %ebx,0x280(%esp)
     be4:	0f b7 98 38 01 00 00 	movzwl 0x138(%eax),%ebx
     beb:	89 8c 24 84 02 00 00 	mov    %ecx,0x284(%esp)
     bf2:	89 9c 24 88 02 00 00 	mov    %ebx,0x288(%esp)
     bf9:	0f b7 88 3a 01 00 00 	movzwl 0x13a(%eax),%ecx
     c00:	0f b7 98 3c 01 00 00 	movzwl 0x13c(%eax),%ebx
     c07:	89 8c 24 8c 02 00 00 	mov    %ecx,0x28c(%esp)
     c0e:	0f b7 88 3e 01 00 00 	movzwl 0x13e(%eax),%ecx
     c15:	89 9c 24 90 02 00 00 	mov    %ebx,0x290(%esp)
     c1c:	0f b7 98 40 01 00 00 	movzwl 0x140(%eax),%ebx
     c23:	89 8c 24 94 02 00 00 	mov    %ecx,0x294(%esp)
     c2a:	0f b7 88 42 01 00 00 	movzwl 0x142(%eax),%ecx
     c31:	89 9c 24 98 02 00 00 	mov    %ebx,0x298(%esp)
     c38:	0f b7 98 44 01 00 00 	movzwl 0x144(%eax),%ebx
     c3f:	89 8c 24 9c 02 00 00 	mov    %ecx,0x29c(%esp)
     c46:	0f b7 88 46 01 00 00 	movzwl 0x146(%eax),%ecx
     c4d:	89 9c 24 a0 02 00 00 	mov    %ebx,0x2a0(%esp)
     c54:	0f b7 98 48 01 00 00 	movzwl 0x148(%eax),%ebx
     c5b:	89 8c 24 a4 02 00 00 	mov    %ecx,0x2a4(%esp)
     c62:	0f b7 88 4a 01 00 00 	movzwl 0x14a(%eax),%ecx
     c69:	89 9c 24 a8 02 00 00 	mov    %ebx,0x2a8(%esp)
     c70:	0f b7 98 4c 01 00 00 	movzwl 0x14c(%eax),%ebx
     c77:	89 8c 24 ac 02 00 00 	mov    %ecx,0x2ac(%esp)
     c7e:	0f b7 88 4e 01 00 00 	movzwl 0x14e(%eax),%ecx
     c85:	89 9c 24 b0 02 00 00 	mov    %ebx,0x2b0(%esp)
     c8c:	0f b7 98 50 01 00 00 	movzwl 0x150(%eax),%ebx
     c93:	89 8c 24 b4 02 00 00 	mov    %ecx,0x2b4(%esp)
     c9a:	0f b7 88 52 01 00 00 	movzwl 0x152(%eax),%ecx
     ca1:	89 9c 24 b8 02 00 00 	mov    %ebx,0x2b8(%esp)
     ca8:	0f b7 98 54 01 00 00 	movzwl 0x154(%eax),%ebx
     caf:	89 8c 24 bc 02 00 00 	mov    %ecx,0x2bc(%esp)
     cb6:	0f b7 88 56 01 00 00 	movzwl 0x156(%eax),%ecx
     cbd:	89 9c 24 c0 02 00 00 	mov    %ebx,0x2c0(%esp)
     cc4:	0f b7 98 58 01 00 00 	movzwl 0x158(%eax),%ebx
     ccb:	89 8c 24 c4 02 00 00 	mov    %ecx,0x2c4(%esp)
     cd2:	89 9c 24 c8 02 00 00 	mov    %ebx,0x2c8(%esp)
     cd9:	0f b7 88 5a 01 00 00 	movzwl 0x15a(%eax),%ecx
     ce0:	0f b7 98 5c 01 00 00 	movzwl 0x15c(%eax),%ebx
     ce7:	89 8c 24 cc 02 00 00 	mov    %ecx,0x2cc(%esp)
     cee:	0f b7 88 5e 01 00 00 	movzwl 0x15e(%eax),%ecx
     cf5:	89 9c 24 d0 02 00 00 	mov    %ebx,0x2d0(%esp)
     cfc:	0f b7 98 60 01 00 00 	movzwl 0x160(%eax),%ebx
     d03:	89 8c 24 d4 02 00 00 	mov    %ecx,0x2d4(%esp)
     d0a:	0f b7 88 62 01 00 00 	movzwl 0x162(%eax),%ecx
     d11:	89 9c 24 d8 02 00 00 	mov    %ebx,0x2d8(%esp)
     d18:	0f b7 98 64 01 00 00 	movzwl 0x164(%eax),%ebx
     d1f:	89 8c 24 dc 02 00 00 	mov    %ecx,0x2dc(%esp)
     d26:	0f b7 88 66 01 00 00 	movzwl 0x166(%eax),%ecx
     d2d:	89 9c 24 e0 02 00 00 	mov    %ebx,0x2e0(%esp)
     d34:	0f b7 98 68 01 00 00 	movzwl 0x168(%eax),%ebx
     d3b:	89 8c 24 e4 02 00 00 	mov    %ecx,0x2e4(%esp)
     d42:	0f b7 88 6a 01 00 00 	movzwl 0x16a(%eax),%ecx
     d49:	89 9c 24 e8 02 00 00 	mov    %ebx,0x2e8(%esp)
     d50:	0f b7 98 6c 01 00 00 	movzwl 0x16c(%eax),%ebx
     d57:	89 8c 24 ec 02 00 00 	mov    %ecx,0x2ec(%esp)
     d5e:	0f b7 88 6e 01 00 00 	movzwl 0x16e(%eax),%ecx
     d65:	89 9c 24 f0 02 00 00 	mov    %ebx,0x2f0(%esp)
     d6c:	0f b7 98 70 01 00 00 	movzwl 0x170(%eax),%ebx
     d73:	89 8c 24 f4 02 00 00 	mov    %ecx,0x2f4(%esp)
     d7a:	0f b7 88 72 01 00 00 	movzwl 0x172(%eax),%ecx
     d81:	89 9c 24 f8 02 00 00 	mov    %ebx,0x2f8(%esp)
     d88:	0f b7 98 74 01 00 00 	movzwl 0x174(%eax),%ebx
     d8f:	89 8c 24 fc 02 00 00 	mov    %ecx,0x2fc(%esp)
     d96:	0f b7 88 76 01 00 00 	movzwl 0x176(%eax),%ecx
     d9d:	89 9c 24 00 03 00 00 	mov    %ebx,0x300(%esp)
     da4:	0f b7 98 78 01 00 00 	movzwl 0x178(%eax),%ebx
     dab:	89 8c 24 04 03 00 00 	mov    %ecx,0x304(%esp)
     db2:	89 9c 24 08 03 00 00 	mov    %ebx,0x308(%esp)
     db9:	0f b7 88 7a 01 00 00 	movzwl 0x17a(%eax),%ecx
     dc0:	0f b7 98 7c 01 00 00 	movzwl 0x17c(%eax),%ebx
     dc7:	0f b7 80 7e 01 00 00 	movzwl 0x17e(%eax),%eax
     dce:	89 34 24             	mov    %esi,(%esp)
     dd1:	89 ee                	mov    %ebp,%esi
     dd3:	89 8c 24 0c 03 00 00 	mov    %ecx,0x30c(%esp)
     dda:	89 84 24 14 03 00 00 	mov    %eax,0x314(%esp)
     de1:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
     de8:	6b 94 24 4c 03 00 00 	imul   $0x1e,0x34c(%esp),%edx
     def:	1e 
     df0:	89 c5                	mov    %eax,%ebp
     df2:	89 9c 24 10 03 00 00 	mov    %ebx,0x310(%esp)
     df9:	c7 84 24 18 03 00 00 	movl   $0x0,0x318(%esp)
     e00:	00 00 00 00 
     e04:	c7 84 24 20 03 00 00 	movl   $0x0,0x320(%esp)
     e0b:	00 00 00 00 
     e0f:	89 94 24 30 03 00 00 	mov    %edx,0x330(%esp)
     e16:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     e1d:	8d 76 00             	lea    0x0(%esi),%esi
     e20:	8b 04 24             	mov    (%esp),%eax
     e23:	8b 94 24 20 03 00 00 	mov    0x320(%esp),%edx
     e2a:	89 ac 24 28 03 00 00 	mov    %ebp,0x328(%esp)
     e31:	8d 4c 05 00          	lea    0x0(%ebp,%eax,1),%ecx
     e35:	8d 44 35 00          	lea    0x0(%ebp,%esi,1),%eax
     e39:	8d 5c 0d 00          	lea    0x0(%ebp,%ecx,1),%ebx
     e3d:	89 84 24 24 03 00 00 	mov    %eax,0x324(%esp)
     e44:	01 e8                	add    %ebp,%eax
     e46:	8d 7c 1d 00          	lea    0x0(%ebp,%ebx,1),%edi
     e4a:	89 44 24 04          	mov    %eax,0x4(%esp)
     e4e:	89 bc 24 1c 03 00 00 	mov    %edi,0x31c(%esp)
     e55:	8d 7c 05 00          	lea    0x0(%ebp,%eax,1),%edi
     e59:	8b 84 24 58 03 00 00 	mov    0x358(%esp),%eax
     e60:	89 7c 24 0c          	mov    %edi,0xc(%esp)
     e64:	8d 14 90             	lea    (%eax,%edx,4),%edx
     e67:	8b 84 24 1c 03 00 00 	mov    0x31c(%esp),%eax
     e6e:	89 54 24 10          	mov    %edx,0x10(%esp)
     e72:	8b 94 24 24 03 00 00 	mov    0x324(%esp),%edx
     e79:	89 44 24 08          	mov    %eax,0x8(%esp)
     e7d:	89 bc 24 24 03 00 00 	mov    %edi,0x324(%esp)
     e84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     e88:	8b 2c 24             	mov    (%esp),%ebp
     e8b:	8b 44 24 18          	mov    0x18(%esp),%eax
     e8f:	0f b7 7d 00          	movzwl 0x0(%ebp),%edi
     e93:	0f b7 6d 02          	movzwl 0x2(%ebp),%ebp
     e97:	0f af f8             	imul   %eax,%edi
     e9a:	8b 44 24 1c          	mov    0x1c(%esp),%eax
     e9e:	0f af e8             	imul   %eax,%ebp
     ea1:	8b 44 24 20          	mov    0x20(%esp),%eax
     ea5:	01 ef                	add    %ebp,%edi
     ea7:	8b 2c 24             	mov    (%esp),%ebp
     eaa:	0f b7 6d 04          	movzwl 0x4(%ebp),%ebp
     eae:	0f af e8             	imul   %eax,%ebp
     eb1:	8b 44 24 24          	mov    0x24(%esp),%eax
     eb5:	01 fd                	add    %edi,%ebp
     eb7:	8b 3c 24             	mov    (%esp),%edi
     eba:	0f b7 7f 06          	movzwl 0x6(%edi),%edi
     ebe:	0f af f8             	imul   %eax,%edi
     ec1:	8b 44 24 28          	mov    0x28(%esp),%eax
     ec5:	01 ef                	add    %ebp,%edi
     ec7:	8b 2c 24             	mov    (%esp),%ebp
     eca:	0f b7 6d 08          	movzwl 0x8(%ebp),%ebp
     ece:	0f af e8             	imul   %eax,%ebp
     ed1:	8b 44 24 2c          	mov    0x2c(%esp),%eax
     ed5:	01 fd                	add    %edi,%ebp
     ed7:	8b 3c 24             	mov    (%esp),%edi
     eda:	0f b7 7f 0a          	movzwl 0xa(%edi),%edi
     ede:	0f af f8             	imul   %eax,%edi
     ee1:	8b 44 24 30          	mov    0x30(%esp),%eax
     ee5:	01 ef                	add    %ebp,%edi
     ee7:	8b 2c 24             	mov    (%esp),%ebp
     eea:	0f b7 6d 0c          	movzwl 0xc(%ebp),%ebp
     eee:	0f af e8             	imul   %eax,%ebp
     ef1:	8b 44 24 34          	mov    0x34(%esp),%eax
     ef5:	01 fd                	add    %edi,%ebp
     ef7:	8b 3c 24             	mov    (%esp),%edi
     efa:	0f b7 7f 0e          	movzwl 0xe(%edi),%edi
     efe:	0f af f8             	imul   %eax,%edi
     f01:	8b 44 24 38          	mov    0x38(%esp),%eax
     f05:	01 ef                	add    %ebp,%edi
     f07:	8b 2c 24             	mov    (%esp),%ebp
     f0a:	0f b7 6d 10          	movzwl 0x10(%ebp),%ebp
     f0e:	0f af e8             	imul   %eax,%ebp
     f11:	8b 44 24 3c          	mov    0x3c(%esp),%eax
     f15:	01 fd                	add    %edi,%ebp
     f17:	8b 3c 24             	mov    (%esp),%edi
     f1a:	0f b7 7f 12          	movzwl 0x12(%edi),%edi
     f1e:	0f af f8             	imul   %eax,%edi
     f21:	8b 44 24 40          	mov    0x40(%esp),%eax
     f25:	01 ef                	add    %ebp,%edi
     f27:	8b 2c 24             	mov    (%esp),%ebp
     f2a:	0f b7 6d 14          	movzwl 0x14(%ebp),%ebp
     f2e:	0f af e8             	imul   %eax,%ebp
     f31:	01 fd                	add    %edi,%ebp
     f33:	8b 3c 24             	mov    (%esp),%edi
     f36:	8b 44 24 44          	mov    0x44(%esp),%eax
     f3a:	0f b7 7f 16          	movzwl 0x16(%edi),%edi
     f3e:	0f af f8             	imul   %eax,%edi
     f41:	8b 44 24 48          	mov    0x48(%esp),%eax
     f45:	01 ef                	add    %ebp,%edi
     f47:	8b 2c 24             	mov    (%esp),%ebp
     f4a:	0f b7 6d 18          	movzwl 0x18(%ebp),%ebp
     f4e:	0f af e8             	imul   %eax,%ebp
     f51:	8b 44 24 4c          	mov    0x4c(%esp),%eax
     f55:	01 fd                	add    %edi,%ebp
     f57:	8b 3c 24             	mov    (%esp),%edi
     f5a:	0f b7 7f 1a          	movzwl 0x1a(%edi),%edi
     f5e:	0f af f8             	imul   %eax,%edi
     f61:	8b 44 24 50          	mov    0x50(%esp),%eax
     f65:	01 ef                	add    %ebp,%edi
     f67:	8b 2c 24             	mov    (%esp),%ebp
     f6a:	0f b7 6d 1c          	movzwl 0x1c(%ebp),%ebp
     f6e:	0f af e8             	imul   %eax,%ebp
     f71:	8b 44 24 54          	mov    0x54(%esp),%eax
     f75:	01 fd                	add    %edi,%ebp
     f77:	8b 3c 24             	mov    (%esp),%edi
     f7a:	0f b7 7f 1e          	movzwl 0x1e(%edi),%edi
     f7e:	0f af f8             	imul   %eax,%edi
     f81:	8b 44 24 58          	mov    0x58(%esp),%eax
     f85:	01 ef                	add    %ebp,%edi
     f87:	8b 2c 24             	mov    (%esp),%ebp
     f8a:	0f b7 6d 20          	movzwl 0x20(%ebp),%ebp
     f8e:	0f af e8             	imul   %eax,%ebp
     f91:	8b 44 24 5c          	mov    0x5c(%esp),%eax
     f95:	01 fd                	add    %edi,%ebp
     f97:	8b 3c 24             	mov    (%esp),%edi
     f9a:	0f b7 7f 22          	movzwl 0x22(%edi),%edi
     f9e:	0f af f8             	imul   %eax,%edi
     fa1:	8b 44 24 60          	mov    0x60(%esp),%eax
     fa5:	01 ef                	add    %ebp,%edi
     fa7:	8b 2c 24             	mov    (%esp),%ebp
     faa:	0f b7 6d 24          	movzwl 0x24(%ebp),%ebp
     fae:	0f af e8             	imul   %eax,%ebp
     fb1:	8b 44 24 64          	mov    0x64(%esp),%eax
     fb5:	01 fd                	add    %edi,%ebp
     fb7:	8b 3c 24             	mov    (%esp),%edi
     fba:	0f b7 7f 26          	movzwl 0x26(%edi),%edi
     fbe:	0f af f8             	imul   %eax,%edi
     fc1:	8b 44 24 68          	mov    0x68(%esp),%eax
     fc5:	01 ef                	add    %ebp,%edi
     fc7:	8b 2c 24             	mov    (%esp),%ebp
     fca:	0f b7 6d 28          	movzwl 0x28(%ebp),%ebp
     fce:	0f af e8             	imul   %eax,%ebp
     fd1:	01 fd                	add    %edi,%ebp
     fd3:	8b 3c 24             	mov    (%esp),%edi
     fd6:	0f b7 7f 2a          	movzwl 0x2a(%edi),%edi
     fda:	8b 44 24 6c          	mov    0x6c(%esp),%eax
     fde:	0f af f8             	imul   %eax,%edi
     fe1:	8b 44 24 70          	mov    0x70(%esp),%eax
     fe5:	01 ef                	add    %ebp,%edi
     fe7:	8b 2c 24             	mov    (%esp),%ebp
     fea:	0f b7 6d 2c          	movzwl 0x2c(%ebp),%ebp
     fee:	0f af e8             	imul   %eax,%ebp
     ff1:	8b 44 24 74          	mov    0x74(%esp),%eax
     ff5:	01 fd                	add    %edi,%ebp
     ff7:	8b 3c 24             	mov    (%esp),%edi
     ffa:	0f b7 7f 2e          	movzwl 0x2e(%edi),%edi
     ffe:	0f af f8             	imul   %eax,%edi
    1001:	8b 44 24 78          	mov    0x78(%esp),%eax
    1005:	01 ef                	add    %ebp,%edi
    1007:	0f b7 2e             	movzwl (%esi),%ebp
    100a:	0f af e8             	imul   %eax,%ebp
    100d:	8b 44 24 7c          	mov    0x7c(%esp),%eax
    1011:	01 fd                	add    %edi,%ebp
    1013:	0f b7 7e 02          	movzwl 0x2(%esi),%edi
    1017:	0f af f8             	imul   %eax,%edi
    101a:	8b 84 24 80 00 00 00 	mov    0x80(%esp),%eax
    1021:	01 ef                	add    %ebp,%edi
    1023:	0f b7 6e 04          	movzwl 0x4(%esi),%ebp
    1027:	0f af e8             	imul   %eax,%ebp
    102a:	8b 84 24 84 00 00 00 	mov    0x84(%esp),%eax
    1031:	01 fd                	add    %edi,%ebp
    1033:	0f b7 7e 06          	movzwl 0x6(%esi),%edi
    1037:	0f af f8             	imul   %eax,%edi
    103a:	8b 84 24 88 00 00 00 	mov    0x88(%esp),%eax
    1041:	01 ef                	add    %ebp,%edi
    1043:	0f b7 6e 08          	movzwl 0x8(%esi),%ebp
    1047:	0f af e8             	imul   %eax,%ebp
    104a:	8b 84 24 8c 00 00 00 	mov    0x8c(%esp),%eax
    1051:	01 fd                	add    %edi,%ebp
    1053:	0f b7 7e 0a          	movzwl 0xa(%esi),%edi
    1057:	0f af f8             	imul   %eax,%edi
    105a:	8b 84 24 90 00 00 00 	mov    0x90(%esp),%eax
    1061:	01 ef                	add    %ebp,%edi
    1063:	0f b7 6e 0c          	movzwl 0xc(%esi),%ebp
    1067:	0f af e8             	imul   %eax,%ebp
    106a:	8b 84 24 94 00 00 00 	mov    0x94(%esp),%eax
    1071:	01 fd                	add    %edi,%ebp
    1073:	0f b7 7e 0e          	movzwl 0xe(%esi),%edi
    1077:	0f af f8             	imul   %eax,%edi
    107a:	8b 84 24 98 00 00 00 	mov    0x98(%esp),%eax
    1081:	01 ef                	add    %ebp,%edi
    1083:	0f b7 6e 10          	movzwl 0x10(%esi),%ebp
    1087:	0f af e8             	imul   %eax,%ebp
    108a:	8b 84 24 9c 00 00 00 	mov    0x9c(%esp),%eax
    1091:	01 fd                	add    %edi,%ebp
    1093:	0f b7 7e 12          	movzwl 0x12(%esi),%edi
    1097:	0f af f8             	imul   %eax,%edi
    109a:	8b 84 24 a0 00 00 00 	mov    0xa0(%esp),%eax
    10a1:	01 ef                	add    %ebp,%edi
    10a3:	0f b7 6e 14          	movzwl 0x14(%esi),%ebp
    10a7:	0f af e8             	imul   %eax,%ebp
    10aa:	8b 84 24 a4 00 00 00 	mov    0xa4(%esp),%eax
    10b1:	01 fd                	add    %edi,%ebp
    10b3:	0f b7 7e 16          	movzwl 0x16(%esi),%edi
    10b7:	0f af f8             	imul   %eax,%edi
    10ba:	01 ef                	add    %ebp,%edi
    10bc:	0f b7 6e 18          	movzwl 0x18(%esi),%ebp
    10c0:	8b 84 24 a8 00 00 00 	mov    0xa8(%esp),%eax
    10c7:	0f af e8             	imul   %eax,%ebp
    10ca:	8b 84 24 ac 00 00 00 	mov    0xac(%esp),%eax
    10d1:	01 fd                	add    %edi,%ebp
    10d3:	0f b7 7e 1a          	movzwl 0x1a(%esi),%edi
    10d7:	0f af f8             	imul   %eax,%edi
    10da:	8b 84 24 b0 00 00 00 	mov    0xb0(%esp),%eax
    10e1:	01 ef                	add    %ebp,%edi
    10e3:	0f b7 6e 1c          	movzwl 0x1c(%esi),%ebp
    10e7:	0f af e8             	imul   %eax,%ebp
    10ea:	8b 84 24 b4 00 00 00 	mov    0xb4(%esp),%eax
    10f1:	01 fd                	add    %edi,%ebp
    10f3:	0f b7 7e 1e          	movzwl 0x1e(%esi),%edi
    10f7:	0f af f8             	imul   %eax,%edi
    10fa:	8b 84 24 b8 00 00 00 	mov    0xb8(%esp),%eax
    1101:	01 ef                	add    %ebp,%edi
    1103:	0f b7 6e 20          	movzwl 0x20(%esi),%ebp
    1107:	0f af e8             	imul   %eax,%ebp
    110a:	8b 84 24 bc 00 00 00 	mov    0xbc(%esp),%eax
    1111:	01 fd                	add    %edi,%ebp
    1113:	0f b7 7e 22          	movzwl 0x22(%esi),%edi
    1117:	0f af f8             	imul   %eax,%edi
    111a:	8b 84 24 c0 00 00 00 	mov    0xc0(%esp),%eax
    1121:	01 ef                	add    %ebp,%edi
    1123:	0f b7 6e 24          	movzwl 0x24(%esi),%ebp
    1127:	0f af e8             	imul   %eax,%ebp
    112a:	8b 84 24 c4 00 00 00 	mov    0xc4(%esp),%eax
    1131:	01 fd                	add    %edi,%ebp
    1133:	0f b7 7e 26          	movzwl 0x26(%esi),%edi
    1137:	0f af f8             	imul   %eax,%edi
    113a:	8b 84 24 c8 00 00 00 	mov    0xc8(%esp),%eax
    1141:	01 ef                	add    %ebp,%edi
    1143:	0f b7 6e 28          	movzwl 0x28(%esi),%ebp
    1147:	0f af e8             	imul   %eax,%ebp
    114a:	8b 84 24 cc 00 00 00 	mov    0xcc(%esp),%eax
    1151:	01 fd                	add    %edi,%ebp
    1153:	0f b7 7e 2a          	movzwl 0x2a(%esi),%edi
    1157:	0f af f8             	imul   %eax,%edi
    115a:	8b 84 24 d0 00 00 00 	mov    0xd0(%esp),%eax
    1161:	01 ef                	add    %ebp,%edi
    1163:	0f b7 6e 2c          	movzwl 0x2c(%esi),%ebp
    1167:	0f af e8             	imul   %eax,%ebp
    116a:	8b 84 24 d4 00 00 00 	mov    0xd4(%esp),%eax
    1171:	01 fd                	add    %edi,%ebp
    1173:	0f b7 7e 2e          	movzwl 0x2e(%esi),%edi
    1177:	0f af f8             	imul   %eax,%edi
    117a:	8b 84 24 d8 00 00 00 	mov    0xd8(%esp),%eax
    1181:	01 ef                	add    %ebp,%edi
    1183:	0f b7 29             	movzwl (%ecx),%ebp
    1186:	0f af e8             	imul   %eax,%ebp
    1189:	8b 84 24 dc 00 00 00 	mov    0xdc(%esp),%eax
    1190:	01 fd                	add    %edi,%ebp
    1192:	0f b7 79 02          	movzwl 0x2(%ecx),%edi
    1196:	0f af f8             	imul   %eax,%edi
    1199:	8b 84 24 e0 00 00 00 	mov    0xe0(%esp),%eax
    11a0:	01 ef                	add    %ebp,%edi
    11a2:	0f b7 69 04          	movzwl 0x4(%ecx),%ebp
    11a6:	0f af e8             	imul   %eax,%ebp
    11a9:	8b 84 24 e4 00 00 00 	mov    0xe4(%esp),%eax
    11b0:	01 fd                	add    %edi,%ebp
    11b2:	0f b7 79 06          	movzwl 0x6(%ecx),%edi
    11b6:	0f af f8             	imul   %eax,%edi
    11b9:	01 ef                	add    %ebp,%edi
    11bb:	0f b7 69 08          	movzwl 0x8(%ecx),%ebp
    11bf:	8b 84 24 e8 00 00 00 	mov    0xe8(%esp),%eax
    11c6:	0f af e8             	imul   %eax,%ebp
    11c9:	8b 84 24 ec 00 00 00 	mov    0xec(%esp),%eax
    11d0:	01 fd                	add    %edi,%ebp
    11d2:	0f b7 79 0a          	movzwl 0xa(%ecx),%edi
    11d6:	0f af f8             	imul   %eax,%edi
    11d9:	8b 84 24 f0 00 00 00 	mov    0xf0(%esp),%eax
    11e0:	01 ef                	add    %ebp,%edi
    11e2:	0f b7 69 0c          	movzwl 0xc(%ecx),%ebp
    11e6:	0f af e8             	imul   %eax,%ebp
    11e9:	8b 84 24 f4 00 00 00 	mov    0xf4(%esp),%eax
    11f0:	01 fd                	add    %edi,%ebp
    11f2:	0f b7 79 0e          	movzwl 0xe(%ecx),%edi
    11f6:	0f af f8             	imul   %eax,%edi
    11f9:	8b 84 24 f8 00 00 00 	mov    0xf8(%esp),%eax
    1200:	01 ef                	add    %ebp,%edi
    1202:	0f b7 69 10          	movzwl 0x10(%ecx),%ebp
    1206:	0f af e8             	imul   %eax,%ebp
    1209:	8b 84 24 fc 00 00 00 	mov    0xfc(%esp),%eax
    1210:	01 fd                	add    %edi,%ebp
    1212:	0f b7 79 12          	movzwl 0x12(%ecx),%edi
    1216:	0f af f8             	imul   %eax,%edi
    1219:	8b 84 24 00 01 00 00 	mov    0x100(%esp),%eax
    1220:	01 ef                	add    %ebp,%edi
    1222:	0f b7 69 14          	movzwl 0x14(%ecx),%ebp
    1226:	0f af e8             	imul   %eax,%ebp
    1229:	8b 84 24 04 01 00 00 	mov    0x104(%esp),%eax
    1230:	01 fd                	add    %edi,%ebp
    1232:	0f b7 79 16          	movzwl 0x16(%ecx),%edi
    1236:	0f af f8             	imul   %eax,%edi
    1239:	8b 84 24 08 01 00 00 	mov    0x108(%esp),%eax
    1240:	01 ef                	add    %ebp,%edi
    1242:	0f b7 69 18          	movzwl 0x18(%ecx),%ebp
    1246:	0f af e8             	imul   %eax,%ebp
    1249:	8b 84 24 0c 01 00 00 	mov    0x10c(%esp),%eax
    1250:	01 fd                	add    %edi,%ebp
    1252:	0f b7 79 1a          	movzwl 0x1a(%ecx),%edi
    1256:	0f af f8             	imul   %eax,%edi
    1259:	8b 84 24 10 01 00 00 	mov    0x110(%esp),%eax
    1260:	01 ef                	add    %ebp,%edi
    1262:	0f b7 69 1c          	movzwl 0x1c(%ecx),%ebp
    1266:	0f af e8             	imul   %eax,%ebp
    1269:	8b 84 24 14 01 00 00 	mov    0x114(%esp),%eax
    1270:	01 fd                	add    %edi,%ebp
    1272:	0f b7 79 1e          	movzwl 0x1e(%ecx),%edi
    1276:	0f af f8             	imul   %eax,%edi
    1279:	8b 84 24 18 01 00 00 	mov    0x118(%esp),%eax
    1280:	01 ef                	add    %ebp,%edi
    1282:	0f b7 69 20          	movzwl 0x20(%ecx),%ebp
    1286:	0f af e8             	imul   %eax,%ebp
    1289:	8b 84 24 1c 01 00 00 	mov    0x11c(%esp),%eax
    1290:	01 fd                	add    %edi,%ebp
    1292:	0f b7 79 22          	movzwl 0x22(%ecx),%edi
    1296:	0f af f8             	imul   %eax,%edi
    1299:	8b 84 24 20 01 00 00 	mov    0x120(%esp),%eax
    12a0:	01 ef                	add    %ebp,%edi
    12a2:	0f b7 69 24          	movzwl 0x24(%ecx),%ebp
    12a6:	0f af e8             	imul   %eax,%ebp
    12a9:	8b 84 24 24 01 00 00 	mov    0x124(%esp),%eax
    12b0:	01 fd                	add    %edi,%ebp
    12b2:	0f b7 79 26          	movzwl 0x26(%ecx),%edi
    12b6:	0f af f8             	imul   %eax,%edi
    12b9:	01 ef                	add    %ebp,%edi
    12bb:	0f b7 69 28          	movzwl 0x28(%ecx),%ebp
    12bf:	8b 84 24 28 01 00 00 	mov    0x128(%esp),%eax
    12c6:	0f af e8             	imul   %eax,%ebp
    12c9:	8b 84 24 2c 01 00 00 	mov    0x12c(%esp),%eax
    12d0:	01 fd                	add    %edi,%ebp
    12d2:	0f b7 79 2a          	movzwl 0x2a(%ecx),%edi
    12d6:	0f af f8             	imul   %eax,%edi
    12d9:	8b 84 24 30 01 00 00 	mov    0x130(%esp),%eax
    12e0:	01 ef                	add    %ebp,%edi
    12e2:	0f b7 69 2c          	movzwl 0x2c(%ecx),%ebp
    12e6:	0f af e8             	imul   %eax,%ebp
    12e9:	8b 84 24 34 01 00 00 	mov    0x134(%esp),%eax
    12f0:	01 fd                	add    %edi,%ebp
    12f2:	0f b7 79 2e          	movzwl 0x2e(%ecx),%edi
    12f6:	0f af f8             	imul   %eax,%edi
    12f9:	8b 84 24 38 01 00 00 	mov    0x138(%esp),%eax
    1300:	01 ef                	add    %ebp,%edi
    1302:	0f b7 2a             	movzwl (%edx),%ebp
    1305:	0f af e8             	imul   %eax,%ebp
    1308:	8b 84 24 3c 01 00 00 	mov    0x13c(%esp),%eax
    130f:	01 fd                	add    %edi,%ebp
    1311:	0f b7 7a 02          	movzwl 0x2(%edx),%edi
    1315:	0f af f8             	imul   %eax,%edi
    1318:	8b 84 24 40 01 00 00 	mov    0x140(%esp),%eax
    131f:	01 ef                	add    %ebp,%edi
    1321:	0f b7 6a 04          	movzwl 0x4(%edx),%ebp
    1325:	0f af e8             	imul   %eax,%ebp
    1328:	8b 84 24 44 01 00 00 	mov    0x144(%esp),%eax
    132f:	01 fd                	add    %edi,%ebp
    1331:	0f b7 7a 06          	movzwl 0x6(%edx),%edi
    1335:	0f af f8             	imul   %eax,%edi
    1338:	8b 84 24 48 01 00 00 	mov    0x148(%esp),%eax
    133f:	01 ef                	add    %ebp,%edi
    1341:	0f b7 6a 08          	movzwl 0x8(%edx),%ebp
    1345:	0f af e8             	imul   %eax,%ebp
    1348:	8b 84 24 4c 01 00 00 	mov    0x14c(%esp),%eax
    134f:	01 fd                	add    %edi,%ebp
    1351:	0f b7 7a 0a          	movzwl 0xa(%edx),%edi
    1355:	0f af f8             	imul   %eax,%edi
    1358:	8b 84 24 50 01 00 00 	mov    0x150(%esp),%eax
    135f:	01 ef                	add    %ebp,%edi
    1361:	0f b7 6a 0c          	movzwl 0xc(%edx),%ebp
    1365:	0f af e8             	imul   %eax,%ebp
    1368:	8b 84 24 54 01 00 00 	mov    0x154(%esp),%eax
    136f:	01 fd                	add    %edi,%ebp
    1371:	0f b7 7a 0e          	movzwl 0xe(%edx),%edi
    1375:	0f af f8             	imul   %eax,%edi
    1378:	8b 84 24 58 01 00 00 	mov    0x158(%esp),%eax
    137f:	01 ef                	add    %ebp,%edi
    1381:	0f b7 6a 10          	movzwl 0x10(%edx),%ebp
    1385:	0f af e8             	imul   %eax,%ebp
    1388:	8b 84 24 5c 01 00 00 	mov    0x15c(%esp),%eax
    138f:	01 fd                	add    %edi,%ebp
    1391:	0f b7 7a 12          	movzwl 0x12(%edx),%edi
    1395:	0f af f8             	imul   %eax,%edi
    1398:	8b 84 24 60 01 00 00 	mov    0x160(%esp),%eax
    139f:	01 ef                	add    %ebp,%edi
    13a1:	0f b7 6a 14          	movzwl 0x14(%edx),%ebp
    13a5:	0f af e8             	imul   %eax,%ebp
    13a8:	8b 84 24 64 01 00 00 	mov    0x164(%esp),%eax
    13af:	01 fd                	add    %edi,%ebp
    13b1:	0f b7 7a 16          	movzwl 0x16(%edx),%edi
    13b5:	0f af f8             	imul   %eax,%edi
    13b8:	01 ef                	add    %ebp,%edi
    13ba:	0f b7 6a 18          	movzwl 0x18(%edx),%ebp
    13be:	8b 84 24 68 01 00 00 	mov    0x168(%esp),%eax
    13c5:	0f af e8             	imul   %eax,%ebp
    13c8:	8b 84 24 6c 01 00 00 	mov    0x16c(%esp),%eax
    13cf:	01 fd                	add    %edi,%ebp
    13d1:	0f b7 7a 1a          	movzwl 0x1a(%edx),%edi
    13d5:	0f af f8             	imul   %eax,%edi
    13d8:	8b 84 24 70 01 00 00 	mov    0x170(%esp),%eax
    13df:	01 ef                	add    %ebp,%edi
    13e1:	0f b7 6a 1c          	movzwl 0x1c(%edx),%ebp
    13e5:	0f af e8             	imul   %eax,%ebp
    13e8:	8b 84 24 74 01 00 00 	mov    0x174(%esp),%eax
    13ef:	01 fd                	add    %edi,%ebp
    13f1:	0f b7 7a 1e          	movzwl 0x1e(%edx),%edi
    13f5:	0f af f8             	imul   %eax,%edi
    13f8:	8b 84 24 78 01 00 00 	mov    0x178(%esp),%eax
    13ff:	01 ef                	add    %ebp,%edi
    1401:	0f b7 6a 20          	movzwl 0x20(%edx),%ebp
    1405:	0f af e8             	imul   %eax,%ebp
    1408:	8b 84 24 7c 01 00 00 	mov    0x17c(%esp),%eax
    140f:	01 fd                	add    %edi,%ebp
    1411:	0f b7 7a 22          	movzwl 0x22(%edx),%edi
    1415:	0f af f8             	imul   %eax,%edi
    1418:	8b 84 24 80 01 00 00 	mov    0x180(%esp),%eax
    141f:	01 ef                	add    %ebp,%edi
    1421:	0f b7 6a 24          	movzwl 0x24(%edx),%ebp
    1425:	0f af e8             	imul   %eax,%ebp
    1428:	8b 84 24 84 01 00 00 	mov    0x184(%esp),%eax
    142f:	01 fd                	add    %edi,%ebp
    1431:	0f b7 7a 26          	movzwl 0x26(%edx),%edi
    1435:	0f af f8             	imul   %eax,%edi
    1438:	8b 84 24 88 01 00 00 	mov    0x188(%esp),%eax
    143f:	01 ef                	add    %ebp,%edi
    1441:	0f b7 6a 28          	movzwl 0x28(%edx),%ebp
    1445:	0f af e8             	imul   %eax,%ebp
    1448:	8b 84 24 8c 01 00 00 	mov    0x18c(%esp),%eax
    144f:	01 fd                	add    %edi,%ebp
    1451:	0f b7 7a 2a          	movzwl 0x2a(%edx),%edi
    1455:	0f af f8             	imul   %eax,%edi
    1458:	8b 84 24 90 01 00 00 	mov    0x190(%esp),%eax
    145f:	01 ef                	add    %ebp,%edi
    1461:	0f b7 6a 2c          	movzwl 0x2c(%edx),%ebp
    1465:	0f af e8             	imul   %eax,%ebp
    1468:	8b 84 24 94 01 00 00 	mov    0x194(%esp),%eax
    146f:	01 fd                	add    %edi,%ebp
    1471:	0f b7 7a 2e          	movzwl 0x2e(%edx),%edi
    1475:	0f af f8             	imul   %eax,%edi
    1478:	8b 84 24 98 01 00 00 	mov    0x198(%esp),%eax
    147f:	01 ef                	add    %ebp,%edi
    1481:	0f b7 2b             	movzwl (%ebx),%ebp
    1484:	0f af e8             	imul   %eax,%ebp
    1487:	8b 84 24 9c 01 00 00 	mov    0x19c(%esp),%eax
    148e:	01 fd                	add    %edi,%ebp
    1490:	0f b7 7b 02          	movzwl 0x2(%ebx),%edi
    1494:	0f af f8             	imul   %eax,%edi
    1497:	8b 84 24 a0 01 00 00 	mov    0x1a0(%esp),%eax
    149e:	01 ef                	add    %ebp,%edi
    14a0:	0f b7 6b 04          	movzwl 0x4(%ebx),%ebp
    14a4:	0f af e8             	imul   %eax,%ebp
    14a7:	8b 84 24 a4 01 00 00 	mov    0x1a4(%esp),%eax
    14ae:	01 fd                	add    %edi,%ebp
    14b0:	0f b7 7b 06          	movzwl 0x6(%ebx),%edi
    14b4:	0f af f8             	imul   %eax,%edi
    14b7:	01 ef                	add    %ebp,%edi
    14b9:	0f b7 6b 08          	movzwl 0x8(%ebx),%ebp
    14bd:	8b 84 24 a8 01 00 00 	mov    0x1a8(%esp),%eax
    14c4:	0f af e8             	imul   %eax,%ebp
    14c7:	8b 84 24 ac 01 00 00 	mov    0x1ac(%esp),%eax
    14ce:	01 fd                	add    %edi,%ebp
    14d0:	0f b7 7b 0a          	movzwl 0xa(%ebx),%edi
    14d4:	0f af f8             	imul   %eax,%edi
    14d7:	8b 84 24 b0 01 00 00 	mov    0x1b0(%esp),%eax
    14de:	01 ef                	add    %ebp,%edi
    14e0:	0f b7 6b 0c          	movzwl 0xc(%ebx),%ebp
    14e4:	0f af e8             	imul   %eax,%ebp
    14e7:	8b 84 24 b4 01 00 00 	mov    0x1b4(%esp),%eax
    14ee:	01 fd                	add    %edi,%ebp
    14f0:	0f b7 7b 0e          	movzwl 0xe(%ebx),%edi
    14f4:	0f af f8             	imul   %eax,%edi
    14f7:	8b 84 24 b8 01 00 00 	mov    0x1b8(%esp),%eax
    14fe:	01 ef                	add    %ebp,%edi
    1500:	0f b7 6b 10          	movzwl 0x10(%ebx),%ebp
    1504:	0f af e8             	imul   %eax,%ebp
    1507:	8b 84 24 bc 01 00 00 	mov    0x1bc(%esp),%eax
    150e:	01 fd                	add    %edi,%ebp
    1510:	0f b7 7b 12          	movzwl 0x12(%ebx),%edi
    1514:	0f af f8             	imul   %eax,%edi
    1517:	8b 84 24 c0 01 00 00 	mov    0x1c0(%esp),%eax
    151e:	01 ef                	add    %ebp,%edi
    1520:	0f b7 6b 14          	movzwl 0x14(%ebx),%ebp
    1524:	0f af e8             	imul   %eax,%ebp
    1527:	8b 84 24 c4 01 00 00 	mov    0x1c4(%esp),%eax
    152e:	01 fd                	add    %edi,%ebp
    1530:	0f b7 7b 16          	movzwl 0x16(%ebx),%edi
    1534:	0f af f8             	imul   %eax,%edi
    1537:	8b 84 24 c8 01 00 00 	mov    0x1c8(%esp),%eax
    153e:	01 ef                	add    %ebp,%edi
    1540:	0f b7 6b 18          	movzwl 0x18(%ebx),%ebp
    1544:	0f af e8             	imul   %eax,%ebp
    1547:	8b 84 24 cc 01 00 00 	mov    0x1cc(%esp),%eax
    154e:	01 fd                	add    %edi,%ebp
    1550:	0f b7 7b 1a          	movzwl 0x1a(%ebx),%edi
    1554:	0f af f8             	imul   %eax,%edi
    1557:	8b 84 24 d0 01 00 00 	mov    0x1d0(%esp),%eax
    155e:	01 ef                	add    %ebp,%edi
    1560:	0f b7 6b 1c          	movzwl 0x1c(%ebx),%ebp
    1564:	0f af e8             	imul   %eax,%ebp
    1567:	8b 84 24 d4 01 00 00 	mov    0x1d4(%esp),%eax
    156e:	01 fd                	add    %edi,%ebp
    1570:	0f b7 7b 1e          	movzwl 0x1e(%ebx),%edi
    1574:	0f af f8             	imul   %eax,%edi
    1577:	8b 84 24 d8 01 00 00 	mov    0x1d8(%esp),%eax
    157e:	01 ef                	add    %ebp,%edi
    1580:	0f b7 6b 20          	movzwl 0x20(%ebx),%ebp
    1584:	0f af e8             	imul   %eax,%ebp
    1587:	8b 84 24 dc 01 00 00 	mov    0x1dc(%esp),%eax
    158e:	01 fd                	add    %edi,%ebp
    1590:	0f b7 7b 22          	movzwl 0x22(%ebx),%edi
    1594:	0f af f8             	imul   %eax,%edi
    1597:	8b 84 24 e0 01 00 00 	mov    0x1e0(%esp),%eax
    159e:	01 ef                	add    %ebp,%edi
    15a0:	0f b7 6b 24          	movzwl 0x24(%ebx),%ebp
    15a4:	0f af e8             	imul   %eax,%ebp
    15a7:	8b 84 24 e4 01 00 00 	mov    0x1e4(%esp),%eax
    15ae:	01 fd                	add    %edi,%ebp
    15b0:	0f b7 7b 26          	movzwl 0x26(%ebx),%edi
    15b4:	0f af f8             	imul   %eax,%edi
    15b7:	01 ef                	add    %ebp,%edi
    15b9:	0f b7 6b 28          	movzwl 0x28(%ebx),%ebp
    15bd:	8b 84 24 e8 01 00 00 	mov    0x1e8(%esp),%eax
    15c4:	0f af e8             	imul   %eax,%ebp
    15c7:	8b 84 24 ec 01 00 00 	mov    0x1ec(%esp),%eax
    15ce:	01 fd                	add    %edi,%ebp
    15d0:	0f b7 7b 2a          	movzwl 0x2a(%ebx),%edi
    15d4:	0f af f8             	imul   %eax,%edi
    15d7:	8b 84 24 f0 01 00 00 	mov    0x1f0(%esp),%eax
    15de:	01 ef                	add    %ebp,%edi
    15e0:	0f b7 6b 2c          	movzwl 0x2c(%ebx),%ebp
    15e4:	0f af e8             	imul   %eax,%ebp
    15e7:	8b 84 24 f4 01 00 00 	mov    0x1f4(%esp),%eax
    15ee:	01 fd                	add    %edi,%ebp
    15f0:	0f b7 7b 2e          	movzwl 0x2e(%ebx),%edi
    15f4:	0f af f8             	imul   %eax,%edi
    15f7:	8b 44 24 04          	mov    0x4(%esp),%eax
    15fb:	01 ef                	add    %ebp,%edi
    15fd:	0f b7 28             	movzwl (%eax),%ebp
    1600:	8b 84 24 f8 01 00 00 	mov    0x1f8(%esp),%eax
    1607:	0f af e8             	imul   %eax,%ebp
    160a:	8b 44 24 04          	mov    0x4(%esp),%eax
    160e:	01 fd                	add    %edi,%ebp
    1610:	0f b7 78 02          	movzwl 0x2(%eax),%edi
    1614:	8b 84 24 fc 01 00 00 	mov    0x1fc(%esp),%eax
    161b:	0f af f8             	imul   %eax,%edi
    161e:	8b 44 24 04          	mov    0x4(%esp),%eax
    1622:	01 ef                	add    %ebp,%edi
    1624:	0f b7 68 04          	movzwl 0x4(%eax),%ebp
    1628:	8b 84 24 00 02 00 00 	mov    0x200(%esp),%eax
    162f:	0f af e8             	imul   %eax,%ebp
    1632:	8b 44 24 04          	mov    0x4(%esp),%eax
    1636:	01 fd                	add    %edi,%ebp
    1638:	0f b7 78 06          	movzwl 0x6(%eax),%edi
    163c:	8b 84 24 04 02 00 00 	mov    0x204(%esp),%eax
    1643:	0f af f8             	imul   %eax,%edi
    1646:	8b 44 24 04          	mov    0x4(%esp),%eax
    164a:	01 ef                	add    %ebp,%edi
    164c:	0f b7 68 08          	movzwl 0x8(%eax),%ebp
    1650:	8b 84 24 08 02 00 00 	mov    0x208(%esp),%eax
    1657:	0f af e8             	imul   %eax,%ebp
    165a:	8b 44 24 04          	mov    0x4(%esp),%eax
    165e:	01 fd                	add    %edi,%ebp
    1660:	0f b7 78 0a          	movzwl 0xa(%eax),%edi
    1664:	8b 84 24 0c 02 00 00 	mov    0x20c(%esp),%eax
    166b:	0f af f8             	imul   %eax,%edi
    166e:	8b 44 24 04          	mov    0x4(%esp),%eax
    1672:	01 ef                	add    %ebp,%edi
    1674:	0f b7 68 0c          	movzwl 0xc(%eax),%ebp
    1678:	8b 84 24 10 02 00 00 	mov    0x210(%esp),%eax
    167f:	0f af e8             	imul   %eax,%ebp
    1682:	8b 44 24 04          	mov    0x4(%esp),%eax
    1686:	01 fd                	add    %edi,%ebp
    1688:	0f b7 78 0e          	movzwl 0xe(%eax),%edi
    168c:	8b 84 24 14 02 00 00 	mov    0x214(%esp),%eax
    1693:	0f af f8             	imul   %eax,%edi
    1696:	8b 44 24 04          	mov    0x4(%esp),%eax
    169a:	01 ef                	add    %ebp,%edi
    169c:	0f b7 68 10          	movzwl 0x10(%eax),%ebp
    16a0:	8b 84 24 18 02 00 00 	mov    0x218(%esp),%eax
    16a7:	0f af e8             	imul   %eax,%ebp
    16aa:	8b 44 24 04          	mov    0x4(%esp),%eax
    16ae:	01 fd                	add    %edi,%ebp
    16b0:	0f b7 78 12          	movzwl 0x12(%eax),%edi
    16b4:	8b 84 24 1c 02 00 00 	mov    0x21c(%esp),%eax
    16bb:	0f af f8             	imul   %eax,%edi
    16be:	8b 44 24 04          	mov    0x4(%esp),%eax
    16c2:	01 ef                	add    %ebp,%edi
    16c4:	0f b7 68 14          	movzwl 0x14(%eax),%ebp
    16c8:	8b 84 24 20 02 00 00 	mov    0x220(%esp),%eax
    16cf:	0f af e8             	imul   %eax,%ebp
    16d2:	8b 44 24 04          	mov    0x4(%esp),%eax
    16d6:	01 fd                	add    %edi,%ebp
    16d8:	0f b7 78 16          	movzwl 0x16(%eax),%edi
    16dc:	8b 84 24 24 02 00 00 	mov    0x224(%esp),%eax
    16e3:	0f af f8             	imul   %eax,%edi
    16e6:	8b 44 24 04          	mov    0x4(%esp),%eax
    16ea:	01 ef                	add    %ebp,%edi
    16ec:	0f b7 68 18          	movzwl 0x18(%eax),%ebp
    16f0:	8b 84 24 28 02 00 00 	mov    0x228(%esp),%eax
    16f7:	0f af e8             	imul   %eax,%ebp
    16fa:	8b 44 24 04          	mov    0x4(%esp),%eax
    16fe:	01 fd                	add    %edi,%ebp
    1700:	0f b7 78 1a          	movzwl 0x1a(%eax),%edi
    1704:	8b 84 24 2c 02 00 00 	mov    0x22c(%esp),%eax
    170b:	0f af f8             	imul   %eax,%edi
    170e:	8b 44 24 04          	mov    0x4(%esp),%eax
    1712:	01 ef                	add    %ebp,%edi
    1714:	0f b7 68 1c          	movzwl 0x1c(%eax),%ebp
    1718:	8b 84 24 30 02 00 00 	mov    0x230(%esp),%eax
    171f:	0f af e8             	imul   %eax,%ebp
    1722:	8b 44 24 04          	mov    0x4(%esp),%eax
    1726:	01 fd                	add    %edi,%ebp
    1728:	0f b7 78 1e          	movzwl 0x1e(%eax),%edi
    172c:	8b 84 24 34 02 00 00 	mov    0x234(%esp),%eax
    1733:	0f af f8             	imul   %eax,%edi
    1736:	8b 44 24 04          	mov    0x4(%esp),%eax
    173a:	01 ef                	add    %ebp,%edi
    173c:	0f b7 68 20          	movzwl 0x20(%eax),%ebp
    1740:	8b 84 24 38 02 00 00 	mov    0x238(%esp),%eax
    1747:	0f af e8             	imul   %eax,%ebp
    174a:	8b 44 24 04          	mov    0x4(%esp),%eax
    174e:	01 fd                	add    %edi,%ebp
    1750:	0f b7 78 22          	movzwl 0x22(%eax),%edi
    1754:	8b 84 24 3c 02 00 00 	mov    0x23c(%esp),%eax
    175b:	0f af f8             	imul   %eax,%edi
    175e:	8b 44 24 04          	mov    0x4(%esp),%eax
    1762:	01 ef                	add    %ebp,%edi
    1764:	0f b7 68 24          	movzwl 0x24(%eax),%ebp
    1768:	8b 84 24 40 02 00 00 	mov    0x240(%esp),%eax
    176f:	0f af e8             	imul   %eax,%ebp
    1772:	8b 44 24 04          	mov    0x4(%esp),%eax
    1776:	01 fd                	add    %edi,%ebp
    1778:	0f b7 78 26          	movzwl 0x26(%eax),%edi
    177c:	8b 84 24 44 02 00 00 	mov    0x244(%esp),%eax
    1783:	0f af f8             	imul   %eax,%edi
    1786:	8b 44 24 04          	mov    0x4(%esp),%eax
    178a:	01 ef                	add    %ebp,%edi
    178c:	0f b7 68 28          	movzwl 0x28(%eax),%ebp
    1790:	8b 84 24 48 02 00 00 	mov    0x248(%esp),%eax
    1797:	0f af e8             	imul   %eax,%ebp
    179a:	8b 44 24 04          	mov    0x4(%esp),%eax
    179e:	01 fd                	add    %edi,%ebp
    17a0:	0f b7 78 2a          	movzwl 0x2a(%eax),%edi
    17a4:	8b 84 24 4c 02 00 00 	mov    0x24c(%esp),%eax
    17ab:	0f af f8             	imul   %eax,%edi
    17ae:	8b 44 24 04          	mov    0x4(%esp),%eax
    17b2:	01 ef                	add    %ebp,%edi
    17b4:	0f b7 68 2c          	movzwl 0x2c(%eax),%ebp
    17b8:	8b 84 24 50 02 00 00 	mov    0x250(%esp),%eax
    17bf:	0f af e8             	imul   %eax,%ebp
    17c2:	8b 44 24 04          	mov    0x4(%esp),%eax
    17c6:	01 fd                	add    %edi,%ebp
    17c8:	0f b7 78 2e          	movzwl 0x2e(%eax),%edi
    17cc:	8b 84 24 54 02 00 00 	mov    0x254(%esp),%eax
    17d3:	0f af f8             	imul   %eax,%edi
    17d6:	8b 84 24 58 02 00 00 	mov    0x258(%esp),%eax
    17dd:	01 ef                	add    %ebp,%edi
    17df:	8b 6c 24 08          	mov    0x8(%esp),%ebp
    17e3:	0f b7 6d 00          	movzwl 0x0(%ebp),%ebp
    17e7:	0f af e8             	imul   %eax,%ebp
    17ea:	8b 84 24 5c 02 00 00 	mov    0x25c(%esp),%eax
    17f1:	01 fd                	add    %edi,%ebp
    17f3:	8b 7c 24 08          	mov    0x8(%esp),%edi
    17f7:	0f b7 7f 02          	movzwl 0x2(%edi),%edi
    17fb:	0f af f8             	imul   %eax,%edi
    17fe:	8b 84 24 60 02 00 00 	mov    0x260(%esp),%eax
    1805:	01 ef                	add    %ebp,%edi
    1807:	8b 6c 24 08          	mov    0x8(%esp),%ebp
    180b:	0f b7 6d 04          	movzwl 0x4(%ebp),%ebp
    180f:	0f af e8             	imul   %eax,%ebp
    1812:	8b 84 24 64 02 00 00 	mov    0x264(%esp),%eax
    1819:	01 fd                	add    %edi,%ebp
    181b:	8b 7c 24 08          	mov    0x8(%esp),%edi
    181f:	0f b7 7f 06          	movzwl 0x6(%edi),%edi
    1823:	0f af f8             	imul   %eax,%edi
    1826:	8b 84 24 68 02 00 00 	mov    0x268(%esp),%eax
    182d:	01 ef                	add    %ebp,%edi
    182f:	8b 6c 24 08          	mov    0x8(%esp),%ebp
    1833:	0f b7 6d 08          	movzwl 0x8(%ebp),%ebp
    1837:	0f af e8             	imul   %eax,%ebp
    183a:	01 fd                	add    %edi,%ebp
    183c:	8b 7c 24 08          	mov    0x8(%esp),%edi
    1840:	0f b7 7f 0a          	movzwl 0xa(%edi),%edi
    1844:	8b 84 24 6c 02 00 00 	mov    0x26c(%esp),%eax
    184b:	0f af f8             	imul   %eax,%edi
    184e:	8b 84 24 70 02 00 00 	mov    0x270(%esp),%eax
    1855:	01 ef                	add    %ebp,%edi
    1857:	8b 6c 24 08          	mov    0x8(%esp),%ebp
    185b:	0f b7 6d 0c          	movzwl 0xc(%ebp),%ebp
    185f:	0f af e8             	imul   %eax,%ebp
    1862:	8b 84 24 74 02 00 00 	mov    0x274(%esp),%eax
    1869:	01 fd                	add    %edi,%ebp
    186b:	8b 7c 24 08          	mov    0x8(%esp),%edi
    186f:	0f b7 7f 0e          	movzwl 0xe(%edi),%edi
    1873:	0f af f8             	imul   %eax,%edi
    1876:	8b 84 24 78 02 00 00 	mov    0x278(%esp),%eax
    187d:	01 ef                	add    %ebp,%edi
    187f:	8b 6c 24 08          	mov    0x8(%esp),%ebp
    1883:	0f b7 6d 10          	movzwl 0x10(%ebp),%ebp
    1887:	0f af e8             	imul   %eax,%ebp
    188a:	8b 84 24 7c 02 00 00 	mov    0x27c(%esp),%eax
    1891:	01 fd                	add    %edi,%ebp
    1893:	8b 7c 24 08          	mov    0x8(%esp),%edi
    1897:	0f b7 7f 12          	movzwl 0x12(%edi),%edi
    189b:	0f af f8             	imul   %eax,%edi
    189e:	8b 84 24 80 02 00 00 	mov    0x280(%esp),%eax
    18a5:	01 ef                	add    %ebp,%edi
    18a7:	8b 6c 24 08          	mov    0x8(%esp),%ebp
    18ab:	0f b7 6d 14          	movzwl 0x14(%ebp),%ebp
    18af:	0f af e8             	imul   %eax,%ebp
    18b2:	8b 84 24 84 02 00 00 	mov    0x284(%esp),%eax
    18b9:	01 fd                	add    %edi,%ebp
    18bb:	8b 7c 24 08          	mov    0x8(%esp),%edi
    18bf:	0f b7 7f 16          	movzwl 0x16(%edi),%edi
    18c3:	0f af f8             	imul   %eax,%edi
    18c6:	8b 84 24 88 02 00 00 	mov    0x288(%esp),%eax
    18cd:	01 ef                	add    %ebp,%edi
    18cf:	8b 6c 24 08          	mov    0x8(%esp),%ebp
    18d3:	0f b7 6d 18          	movzwl 0x18(%ebp),%ebp
    18d7:	0f af e8             	imul   %eax,%ebp
    18da:	8b 84 24 8c 02 00 00 	mov    0x28c(%esp),%eax
    18e1:	01 fd                	add    %edi,%ebp
    18e3:	8b 7c 24 08          	mov    0x8(%esp),%edi
    18e7:	0f b7 7f 1a          	movzwl 0x1a(%edi),%edi
    18eb:	0f af f8             	imul   %eax,%edi
    18ee:	8b 84 24 90 02 00 00 	mov    0x290(%esp),%eax
    18f5:	01 ef                	add    %ebp,%edi
    18f7:	8b 6c 24 08          	mov    0x8(%esp),%ebp
    18fb:	0f b7 6d 1c          	movzwl 0x1c(%ebp),%ebp
    18ff:	0f af e8             	imul   %eax,%ebp
    1902:	8b 84 24 94 02 00 00 	mov    0x294(%esp),%eax
    1909:	01 fd                	add    %edi,%ebp
    190b:	8b 7c 24 08          	mov    0x8(%esp),%edi
    190f:	0f b7 7f 1e          	movzwl 0x1e(%edi),%edi
    1913:	0f af f8             	imul   %eax,%edi
    1916:	01 ef                	add    %ebp,%edi
    1918:	8b 6c 24 08          	mov    0x8(%esp),%ebp
    191c:	0f b7 6d 20          	movzwl 0x20(%ebp),%ebp
    1920:	8b 84 24 98 02 00 00 	mov    0x298(%esp),%eax
    1927:	0f af e8             	imul   %eax,%ebp
    192a:	8b 84 24 9c 02 00 00 	mov    0x29c(%esp),%eax
    1931:	01 fd                	add    %edi,%ebp
    1933:	8b 7c 24 08          	mov    0x8(%esp),%edi
    1937:	0f b7 7f 22          	movzwl 0x22(%edi),%edi
    193b:	0f af f8             	imul   %eax,%edi
    193e:	8b 84 24 a0 02 00 00 	mov    0x2a0(%esp),%eax
    1945:	01 ef                	add    %ebp,%edi
    1947:	8b 6c 24 08          	mov    0x8(%esp),%ebp
    194b:	0f b7 6d 24          	movzwl 0x24(%ebp),%ebp
    194f:	0f af e8             	imul   %eax,%ebp
    1952:	8b 84 24 a4 02 00 00 	mov    0x2a4(%esp),%eax
    1959:	01 fd                	add    %edi,%ebp
    195b:	8b 7c 24 08          	mov    0x8(%esp),%edi
    195f:	0f b7 7f 26          	movzwl 0x26(%edi),%edi
    1963:	0f af f8             	imul   %eax,%edi
    1966:	8b 84 24 a8 02 00 00 	mov    0x2a8(%esp),%eax
    196d:	01 ef                	add    %ebp,%edi
    196f:	8b 6c 24 08          	mov    0x8(%esp),%ebp
    1973:	0f b7 6d 28          	movzwl 0x28(%ebp),%ebp
    1977:	0f af e8             	imul   %eax,%ebp
    197a:	8b 84 24 ac 02 00 00 	mov    0x2ac(%esp),%eax
    1981:	01 fd                	add    %edi,%ebp
    1983:	8b 7c 24 08          	mov    0x8(%esp),%edi
    1987:	0f b7 7f 2a          	movzwl 0x2a(%edi),%edi
    198b:	0f af f8             	imul   %eax,%edi
    198e:	8b 84 24 b0 02 00 00 	mov    0x2b0(%esp),%eax
    1995:	01 ef                	add    %ebp,%edi
    1997:	8b 6c 24 08          	mov    0x8(%esp),%ebp
    199b:	0f b7 6d 2c          	movzwl 0x2c(%ebp),%ebp
    199f:	0f af e8             	imul   %eax,%ebp
    19a2:	8b 84 24 b4 02 00 00 	mov    0x2b4(%esp),%eax
    19a9:	01 fd                	add    %edi,%ebp
    19ab:	8b 7c 24 08          	mov    0x8(%esp),%edi
    19af:	0f b7 7f 2e          	movzwl 0x2e(%edi),%edi
    19b3:	0f af f8             	imul   %eax,%edi
    19b6:	8b 84 24 b8 02 00 00 	mov    0x2b8(%esp),%eax
    19bd:	01 ef                	add    %ebp,%edi
    19bf:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
    19c3:	0f b7 6d 00          	movzwl 0x0(%ebp),%ebp
    19c7:	0f af e8             	imul   %eax,%ebp
    19ca:	8b 84 24 bc 02 00 00 	mov    0x2bc(%esp),%eax
    19d1:	01 fd                	add    %edi,%ebp
    19d3:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    19d7:	0f b7 7f 02          	movzwl 0x2(%edi),%edi
    19db:	0f af f8             	imul   %eax,%edi
    19de:	8b 84 24 c0 02 00 00 	mov    0x2c0(%esp),%eax
    19e5:	01 ef                	add    %ebp,%edi
    19e7:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
    19eb:	0f b7 6d 04          	movzwl 0x4(%ebp),%ebp
    19ef:	0f af e8             	imul   %eax,%ebp
    19f2:	01 fd                	add    %edi,%ebp
    19f4:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    19f8:	8b 84 24 c4 02 00 00 	mov    0x2c4(%esp),%eax
    19ff:	0f b7 7f 06          	movzwl 0x6(%edi),%edi
    1a03:	0f af f8             	imul   %eax,%edi
    1a06:	8b 84 24 c8 02 00 00 	mov    0x2c8(%esp),%eax
    1a0d:	01 ef                	add    %ebp,%edi
    1a0f:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
    1a13:	0f b7 6d 08          	movzwl 0x8(%ebp),%ebp
    1a17:	0f af e8             	imul   %eax,%ebp
    1a1a:	8b 84 24 cc 02 00 00 	mov    0x2cc(%esp),%eax
    1a21:	01 fd                	add    %edi,%ebp
    1a23:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    1a27:	0f b7 7f 0a          	movzwl 0xa(%edi),%edi
    1a2b:	0f af f8             	imul   %eax,%edi
    1a2e:	8b 84 24 d0 02 00 00 	mov    0x2d0(%esp),%eax
    1a35:	01 ef                	add    %ebp,%edi
    1a37:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
    1a3b:	0f b7 6d 0c          	movzwl 0xc(%ebp),%ebp
    1a3f:	0f af e8             	imul   %eax,%ebp
    1a42:	8b 84 24 d4 02 00 00 	mov    0x2d4(%esp),%eax
    1a49:	01 fd                	add    %edi,%ebp
    1a4b:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    1a4f:	0f b7 7f 0e          	movzwl 0xe(%edi),%edi
    1a53:	0f af f8             	imul   %eax,%edi
    1a56:	8b 84 24 d8 02 00 00 	mov    0x2d8(%esp),%eax
    1a5d:	01 ef                	add    %ebp,%edi
    1a5f:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
    1a63:	0f b7 6d 10          	movzwl 0x10(%ebp),%ebp
    1a67:	0f af e8             	imul   %eax,%ebp
    1a6a:	8b 84 24 dc 02 00 00 	mov    0x2dc(%esp),%eax
    1a71:	01 fd                	add    %edi,%ebp
    1a73:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    1a77:	0f b7 7f 12          	movzwl 0x12(%edi),%edi
    1a7b:	0f af f8             	imul   %eax,%edi
    1a7e:	8b 84 24 e0 02 00 00 	mov    0x2e0(%esp),%eax
    1a85:	01 ef                	add    %ebp,%edi
    1a87:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
    1a8b:	0f b7 6d 14          	movzwl 0x14(%ebp),%ebp
    1a8f:	0f af e8             	imul   %eax,%ebp
    1a92:	8b 84 24 e4 02 00 00 	mov    0x2e4(%esp),%eax
    1a99:	01 fd                	add    %edi,%ebp
    1a9b:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    1a9f:	0f b7 7f 16          	movzwl 0x16(%edi),%edi
    1aa3:	0f af f8             	imul   %eax,%edi
    1aa6:	8b 84 24 e8 02 00 00 	mov    0x2e8(%esp),%eax
    1aad:	01 ef                	add    %ebp,%edi
    1aaf:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
    1ab3:	0f b7 6d 18          	movzwl 0x18(%ebp),%ebp
    1ab7:	0f af e8             	imul   %eax,%ebp
    1aba:	01 fd                	add    %edi,%ebp
    1abc:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    1ac0:	0f b7 7f 1a          	movzwl 0x1a(%edi),%edi
    1ac4:	8b 84 24 ec 02 00 00 	mov    0x2ec(%esp),%eax
    1acb:	0f af f8             	imul   %eax,%edi
    1ace:	8b 84 24 f0 02 00 00 	mov    0x2f0(%esp),%eax
    1ad5:	01 ef                	add    %ebp,%edi
    1ad7:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
    1adb:	0f b7 6d 1c          	movzwl 0x1c(%ebp),%ebp
    1adf:	0f af e8             	imul   %eax,%ebp
    1ae2:	8b 84 24 f4 02 00 00 	mov    0x2f4(%esp),%eax
    1ae9:	01 fd                	add    %edi,%ebp
    1aeb:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    1aef:	0f b7 7f 1e          	movzwl 0x1e(%edi),%edi
    1af3:	0f af f8             	imul   %eax,%edi
    1af6:	8b 84 24 f8 02 00 00 	mov    0x2f8(%esp),%eax
    1afd:	01 ef                	add    %ebp,%edi
    1aff:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
    1b03:	0f b7 6d 20          	movzwl 0x20(%ebp),%ebp
    1b07:	0f af e8             	imul   %eax,%ebp
    1b0a:	8b 84 24 fc 02 00 00 	mov    0x2fc(%esp),%eax
    1b11:	01 fd                	add    %edi,%ebp
    1b13:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    1b17:	0f b7 7f 22          	movzwl 0x22(%edi),%edi
    1b1b:	0f af f8             	imul   %eax,%edi
    1b1e:	8b 84 24 00 03 00 00 	mov    0x300(%esp),%eax
    1b25:	01 ef                	add    %ebp,%edi
    1b27:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
    1b2b:	0f b7 6d 24          	movzwl 0x24(%ebp),%ebp
    1b2f:	0f af e8             	imul   %eax,%ebp
    1b32:	8b 84 24 04 03 00 00 	mov    0x304(%esp),%eax
    1b39:	01 fd                	add    %edi,%ebp
    1b3b:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    1b3f:	0f b7 7f 26          	movzwl 0x26(%edi),%edi
    1b43:	0f af f8             	imul   %eax,%edi
    1b46:	8b 84 24 08 03 00 00 	mov    0x308(%esp),%eax
    1b4d:	01 ef                	add    %ebp,%edi
    1b4f:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
    1b53:	0f b7 6d 28          	movzwl 0x28(%ebp),%ebp
    1b57:	0f af e8             	imul   %eax,%ebp
    1b5a:	8b 84 24 0c 03 00 00 	mov    0x30c(%esp),%eax
    1b61:	01 fd                	add    %edi,%ebp
    1b63:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    1b67:	0f b7 7f 2a          	movzwl 0x2a(%edi),%edi
    1b6b:	0f af f8             	imul   %eax,%edi
    1b6e:	8b 84 24 10 03 00 00 	mov    0x310(%esp),%eax
    1b75:	01 ef                	add    %ebp,%edi
    1b77:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
    1b7b:	0f b7 6d 2c          	movzwl 0x2c(%ebp),%ebp
    1b7f:	0f af e8             	imul   %eax,%ebp
    1b82:	8b 84 24 14 03 00 00 	mov    0x314(%esp),%eax
    1b89:	01 fd                	add    %edi,%ebp
    1b8b:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    1b8f:	0f b7 7f 2e          	movzwl 0x2e(%edi),%edi
    1b93:	0f af f8             	imul   %eax,%edi
    1b96:	01 ef                	add    %ebp,%edi
    1b98:	8b 6c 24 10          	mov    0x10(%esp),%ebp
    1b9c:	89 7d 00             	mov    %edi,0x0(%ebp)
    1b9f:	8b 44 24 14          	mov    0x14(%esp),%eax
    1ba3:	83 04 24 06          	addl   $0x6,(%esp)
    1ba7:	83 c6 06             	add    $0x6,%esi
    1baa:	83 c5 04             	add    $0x4,%ebp
    1bad:	83 c1 06             	add    $0x6,%ecx
    1bb0:	83 44 24 04 06       	addl   $0x6,0x4(%esp)
    1bb5:	83 c2 06             	add    $0x6,%edx
    1bb8:	83 c3 06             	add    $0x6,%ebx
    1bbb:	83 44 24 08 06       	addl   $0x6,0x8(%esp)
    1bc0:	83 44 24 0c 06       	addl   $0x6,0xc(%esp)
    1bc5:	89 6c 24 10          	mov    %ebp,0x10(%esp)
    1bc9:	39 c5                	cmp    %eax,%ebp
    1bcb:	0f 85 b7 f2 ff ff    	jne    e88 <forth_conv+0xa78>
    1bd1:	8b 8c 24 4c 03 00 00 	mov    0x34c(%esp),%ecx
    1bd8:	8b 9c 24 30 03 00 00 	mov    0x330(%esp),%ebx
    1bdf:	01 8c 24 20 03 00 00 	add    %ecx,0x320(%esp)
    1be6:	8b bc 24 24 03 00 00 	mov    0x324(%esp),%edi
    1bed:	8b 8c 24 1c 03 00 00 	mov    0x31c(%esp),%ecx
    1bf4:	83 84 24 18 03 00 00 	addl   $0x1,0x318(%esp)
    1bfb:	01 
    1bfc:	8b 94 24 2c 03 00 00 	mov    0x32c(%esp),%edx
    1c03:	8b 84 24 18 03 00 00 	mov    0x318(%esp),%eax
    1c0a:	89 fe                	mov    %edi,%esi
    1c0c:	29 d9                	sub    %ebx,%ecx
    1c0e:	8b ac 24 28 03 00 00 	mov    0x328(%esp),%ebp
    1c15:	29 de                	sub    %ebx,%esi
    1c17:	89 0c 24             	mov    %ecx,(%esp)
    1c1a:	8b 8c 24 34 03 00 00 	mov    0x334(%esp),%ecx
    1c21:	01 4c 24 14          	add    %ecx,0x14(%esp)
    1c25:	39 d0                	cmp    %edx,%eax
    1c27:	0f 85 f3 f1 ff ff    	jne    e20 <forth_conv+0xa10>
    1c2d:	81 c4 38 03 00 00    	add    $0x338,%esp
    1c33:	5b                   	pop    %ebx
    1c34:	5e                   	pop    %esi
    1c35:	5f                   	pop    %edi
    1c36:	5d                   	pop    %ebp
    1c37:	c3                   	ret
    1c38:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1c3f:	90                   	nop

00001c40 <naive_average_pooling>:
    1c40:	55                   	push   %ebp
    1c41:	57                   	push   %edi
    1c42:	56                   	push   %esi
    1c43:	53                   	push   %ebx
    1c44:	83 ec 38             	sub    $0x38,%esp
    1c47:	8b 44 24 4c          	mov    0x4c(%esp),%eax
    1c4b:	8b 7c 24 50          	mov    0x50(%esp),%edi
    1c4f:	c1 e8 1f             	shr    $0x1f,%eax
    1c52:	03 44 24 4c          	add    0x4c(%esp),%eax
    1c56:	d1 f8                	sar    %eax
    1c58:	83 7c 24 4c 01       	cmpl   $0x1,0x4c(%esp)
    1c5d:	89 44 24 24          	mov    %eax,0x24(%esp)
    1c61:	0f 8e 08 03 00 00    	jle    1f6f <naive_average_pooling+0x32f>
    1c67:	89 c3                	mov    %eax,%ebx
    1c69:	8d 04 40             	lea    (%eax,%eax,2),%eax
    1c6c:	89 7c 24 10          	mov    %edi,0x10(%esp)
    1c70:	8d 34 00             	lea    (%eax,%eax,1),%esi
    1c73:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
    1c7a:	89 d8                	mov    %ebx,%eax
    1c7c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1c83:	00 
    1c84:	89 74 24 20          	mov    %esi,0x20(%esp)
    1c88:	8b 74 24 54          	mov    0x54(%esp),%esi
    1c8c:	83 e0 fe             	and    $0xfffffffe,%eax
    1c8f:	29 f9                	sub    %edi,%ecx
    1c91:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
    1c98:	00 
    1c99:	89 74 24 08          	mov    %esi,0x8(%esp)
    1c9d:	8b 74 24 4c          	mov    0x4c(%esp),%esi
    1ca1:	89 4c 24 28          	mov    %ecx,0x28(%esp)
    1ca5:	8d 14 76             	lea    (%esi,%esi,2),%edx
    1ca8:	8d 34 95 00 00 00 00 	lea    0x0(,%edx,4),%esi
    1caf:	89 74 24 2c          	mov    %esi,0x2c(%esp)
    1cb3:	8d 34 57             	lea    (%edi,%edx,2),%esi
    1cb6:	89 da                	mov    %ebx,%edx
    1cb8:	d1 ea                	shr    %edx
    1cba:	89 74 24 0c          	mov    %esi,0xc(%esp)
    1cbe:	01 d0                	add    %edx,%eax
    1cc0:	c1 e0 02             	shl    $0x2,%eax
    1cc3:	89 44 24 30          	mov    %eax,0x30(%esp)
    1cc7:	89 d8                	mov    %ebx,%eax
    1cc9:	83 e3 fe             	and    $0xfffffffe,%ebx
    1ccc:	83 e0 01             	and    $0x1,%eax
    1ccf:	89 5c 24 1c          	mov    %ebx,0x1c(%esp)
    1cd3:	01 db                	add    %ebx,%ebx
    1cd5:	89 44 24 34          	mov    %eax,0x34(%esp)
    1cd9:	89 5c 24 18          	mov    %ebx,0x18(%esp)
    1cdd:	83 c3 01             	add    $0x1,%ebx
    1ce0:	89 1c 24             	mov    %ebx,(%esp)
    1ce3:	31 db                	xor    %ebx,%ebx
    1ce5:	8d 76 00             	lea    0x0(%esi),%esi
    1ce8:	8b 6c 24 4c          	mov    0x4c(%esp),%ebp
    1cec:	01 dd                	add    %ebx,%ebp
    1cee:	83 7c 24 4c 03       	cmpl   $0x3,0x4c(%esp)
    1cf3:	0f 8e 87 02 00 00    	jle    1f80 <naive_average_pooling+0x340>
    1cf9:	8b 44 24 04          	mov    0x4(%esp),%eax
    1cfd:	8b 74 24 20          	mov    0x20(%esp),%esi
    1d01:	8b 4c 24 28          	mov    0x28(%esp),%ecx
    1d05:	8d 04 40             	lea    (%eax,%eax,2),%eax
    1d08:	8d 04 46             	lea    (%esi,%eax,2),%eax
    1d0b:	8b 74 24 0c          	mov    0xc(%esp),%esi
    1d0f:	03 44 24 54          	add    0x54(%esp),%eax
    1d13:	8d 14 31             	lea    (%ecx,%esi,1),%edx
    1d16:	01 fa                	add    %edi,%edx
    1d18:	39 54 24 08          	cmp    %edx,0x8(%esp)
    1d1c:	0f 93 c1             	setae  %cl
    1d1f:	39 c6                	cmp    %eax,%esi
    1d21:	0f 93 c2             	setae  %dl
    1d24:	08 ca                	or     %cl,%dl
    1d26:	0f 84 54 02 00 00    	je     1f80 <naive_average_pooling+0x340>
    1d2c:	8b 74 24 10          	mov    0x10(%esp),%esi
    1d30:	8b 4c 24 28          	mov    0x28(%esp),%ecx
    1d34:	8d 14 31             	lea    (%ecx,%esi,1),%edx
    1d37:	01 fa                	add    %edi,%edx
    1d39:	39 54 24 08          	cmp    %edx,0x8(%esp)
    1d3d:	0f 93 c2             	setae  %dl
    1d40:	39 c6                	cmp    %eax,%esi
    1d42:	0f 93 c0             	setae  %al
    1d45:	08 d0                	or     %dl,%al
    1d47:	0f 84 33 02 00 00    	je     1f80 <naive_average_pooling+0x340>
    1d4d:	8b 44 24 08          	mov    0x8(%esp),%eax
    1d51:	89 f2                	mov    %esi,%edx
    1d53:	8b 74 24 30          	mov    0x30(%esp),%esi
    1d57:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
    1d5b:	01 c6                	add    %eax,%esi
    1d5d:	8d 76 00             	lea    0x0(%esi),%esi
    1d60:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    1d66:	83 c0 0c             	add    $0xc,%eax
    1d69:	83 c2 18             	add    $0x18,%edx
    1d6c:	83 c1 18             	add    $0x18,%ecx
    1d6f:	c7 40 f8 00 00 00 00 	movl   $0x0,-0x8(%eax)
    1d76:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
    1d7d:	66 0f 6e 42 f4       	movd   -0xc(%edx),%xmm0
    1d82:	66 0f 6e 4a f8       	movd   -0x8(%edx),%xmm1
    1d87:	66 0f 6e 5a ec       	movd   -0x14(%edx),%xmm3
    1d8c:	66 0f 6e 62 e8       	movd   -0x18(%edx),%xmm4
    1d91:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
    1d95:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
    1d99:	f2 0f 70 c0 e6       	pshuflw $0xe6,%xmm0,%xmm0
    1d9e:	66 0f 7e 60 f4       	movd   %xmm4,-0xc(%eax)
    1da3:	66 0f 7e 58 f8       	movd   %xmm3,-0x8(%eax)
    1da8:	66 0f 7e 40 fc       	movd   %xmm0,-0x4(%eax)
    1dad:	66 0f 6e 4a f0       	movd   -0x10(%edx),%xmm1
    1db2:	66 0f 6e 52 ec       	movd   -0x14(%edx),%xmm2
    1db7:	66 0f 61 d1          	punpcklwd %xmm1,%xmm2
    1dbb:	f2 0f 70 d2 e6       	pshuflw $0xe6,%xmm2,%xmm2
    1dc0:	66 0f fd d4          	paddw  %xmm4,%xmm2
    1dc4:	66 0f 6e 62 f8       	movd   -0x8(%edx),%xmm4
    1dc9:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
    1dcd:	66 0f 6e 62 fc       	movd   -0x4(%edx),%xmm4
    1dd2:	f2 0f 70 c9 ee       	pshuflw $0xee,%xmm1,%xmm1
    1dd7:	66 0f 7e 50 f4       	movd   %xmm2,-0xc(%eax)
    1ddc:	66 0f fd cb          	paddw  %xmm3,%xmm1
    1de0:	66 0f fd e0          	paddw  %xmm0,%xmm4
    1de4:	66 0f 7e 48 f8       	movd   %xmm1,-0x8(%eax)
    1de9:	66 0f 7e 60 fc       	movd   %xmm4,-0x4(%eax)
    1dee:	66 0f 6e 59 e8       	movd   -0x18(%ecx),%xmm3
    1df3:	66 0f 6e 41 f4       	movd   -0xc(%ecx),%xmm0
    1df8:	66 0f fd da          	paddw  %xmm2,%xmm3
    1dfc:	66 0f 6e 51 ec       	movd   -0x14(%ecx),%xmm2
    1e01:	66 0f 6f e8          	movdqa %xmm0,%xmm5
    1e05:	66 0f 61 d0          	punpcklwd %xmm0,%xmm2
    1e09:	66 0f fd d1          	paddw  %xmm1,%xmm2
    1e0d:	66 0f 6e 49 f8       	movd   -0x8(%ecx),%xmm1
    1e12:	66 0f 7e 58 f4       	movd   %xmm3,-0xc(%eax)
    1e17:	66 0f 61 e9          	punpcklwd %xmm1,%xmm5
    1e1b:	f2 0f 70 ed e6       	pshuflw $0xe6,%xmm5,%xmm5
    1e20:	66 0f 7e 50 f8       	movd   %xmm2,-0x8(%eax)
    1e25:	66 0f fd ec          	paddw  %xmm4,%xmm5
    1e29:	66 0f 7e 68 fc       	movd   %xmm5,-0x4(%eax)
    1e2e:	66 0f 6e 61 f0       	movd   -0x10(%ecx),%xmm4
    1e33:	66 0f 6e 41 f8       	movd   -0x8(%ecx),%xmm0
    1e38:	66 0f 6f cc          	movdqa %xmm4,%xmm1
    1e3c:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
    1e40:	66 0f 6e 41 fc       	movd   -0x4(%ecx),%xmm0
    1e45:	f2 0f 70 c9 ee       	pshuflw $0xee,%xmm1,%xmm1
    1e4a:	66 0f fd c5          	paddw  %xmm5,%xmm0
    1e4e:	66 0f fd d1          	paddw  %xmm1,%xmm2
    1e52:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    1e56:	66 0f 6e 41 ec       	movd   -0x14(%ecx),%xmm0
    1e5b:	66 0f 71 d2 02       	psrlw  $0x2,%xmm2
    1e60:	66 0f 71 d1 02       	psrlw  $0x2,%xmm1
    1e65:	66 0f 7e 50 f8       	movd   %xmm2,-0x8(%eax)
    1e6a:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
    1e6e:	66 0f 7e 48 fc       	movd   %xmm1,-0x4(%eax)
    1e73:	f2 0f 70 c0 e6       	pshuflw $0xe6,%xmm0,%xmm0
    1e78:	66 0f fd c3          	paddw  %xmm3,%xmm0
    1e7c:	66 0f 71 d0 02       	psrlw  $0x2,%xmm0
    1e81:	66 0f 7e 40 f4       	movd   %xmm0,-0xc(%eax)
    1e86:	39 c6                	cmp    %eax,%esi
    1e88:	0f 85 d2 fe ff ff    	jne    1d60 <naive_average_pooling+0x120>
    1e8e:	8b 74 24 34          	mov    0x34(%esp),%esi
    1e92:	85 f6                	test   %esi,%esi
    1e94:	0f 84 a2 00 00 00    	je     1f3c <naive_average_pooling+0x2fc>
    1e9a:	8b 74 24 1c          	mov    0x1c(%esp),%esi
    1e9e:	8b 44 24 04          	mov    0x4(%esp),%eax
    1ea2:	31 c9                	xor    %ecx,%ecx
    1ea4:	01 f0                	add    %esi,%eax
    1ea6:	8b 74 24 54          	mov    0x54(%esp),%esi
    1eaa:	8d 04 40             	lea    (%eax,%eax,2),%eax
    1ead:	8d 14 46             	lea    (%esi,%eax,2),%edx
    1eb0:	8b 74 24 18          	mov    0x18(%esp),%esi
    1eb4:	66 89 4a 04          	mov    %cx,0x4(%edx)
    1eb8:	8b 0c 24             	mov    (%esp),%ecx
    1ebb:	8d 04 33             	lea    (%ebx,%esi,1),%eax
    1ebe:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
    1ec4:	8d 04 40             	lea    (%eax,%eax,2),%eax
    1ec7:	01 cb                	add    %ecx,%ebx
    1ec9:	8d 04 47             	lea    (%edi,%eax,2),%eax
    1ecc:	8d 0c 5b             	lea    (%ebx,%ebx,2),%ecx
    1ecf:	66 0f 6e 08          	movd   (%eax),%xmm1
    1ed3:	8d 0c 4f             	lea    (%edi,%ecx,2),%ecx
    1ed6:	66 0f 7e 0a          	movd   %xmm1,(%edx)
    1eda:	0f b7 40 04          	movzwl 0x4(%eax),%eax
    1ede:	66 89 42 04          	mov    %ax,0x4(%edx)
    1ee2:	66 0f 6e 01          	movd   (%ecx),%xmm0
    1ee6:	66 0f fd c1          	paddw  %xmm1,%xmm0
    1eea:	66 0f 7e 02          	movd   %xmm0,(%edx)
    1eee:	66 03 41 04          	add    0x4(%ecx),%ax
    1ef2:	8d 4c 35 00          	lea    0x0(%ebp,%esi,1),%ecx
    1ef6:	8d 0c 49             	lea    (%ecx,%ecx,2),%ecx
    1ef9:	66 89 42 04          	mov    %ax,0x4(%edx)
    1efd:	8d 0c 4f             	lea    (%edi,%ecx,2),%ecx
    1f00:	66 0f 6e 09          	movd   (%ecx),%xmm1
    1f04:	66 0f fd c1          	paddw  %xmm1,%xmm0
    1f08:	66 0f 7e 02          	movd   %xmm0,(%edx)
    1f0c:	66 03 41 04          	add    0x4(%ecx),%ax
    1f10:	8b 0c 24             	mov    (%esp),%ecx
    1f13:	66 89 42 04          	mov    %ax,0x4(%edx)
    1f17:	01 e9                	add    %ebp,%ecx
    1f19:	8d 0c 49             	lea    (%ecx,%ecx,2),%ecx
    1f1c:	8d 0c 4f             	lea    (%edi,%ecx,2),%ecx
    1f1f:	66 0f 6e 09          	movd   (%ecx),%xmm1
    1f23:	66 03 41 04          	add    0x4(%ecx),%ax
    1f27:	66 c1 e8 02          	shr    $0x2,%ax
    1f2b:	66 0f fd c8          	paddw  %xmm0,%xmm1
    1f2f:	66 89 42 04          	mov    %ax,0x4(%edx)
    1f33:	66 0f 71 d1 02       	psrlw  $0x2,%xmm1
    1f38:	66 0f 7e 0a          	movd   %xmm1,(%edx)
    1f3c:	8b 74 24 20          	mov    0x20(%esp),%esi
    1f40:	83 44 24 14 01       	addl   $0x1,0x14(%esp)
    1f45:	01 74 24 08          	add    %esi,0x8(%esp)
    1f49:	8b 5c 24 4c          	mov    0x4c(%esp),%ebx
    1f4d:	8b 74 24 2c          	mov    0x2c(%esp),%esi
    1f51:	8b 44 24 14          	mov    0x14(%esp),%eax
    1f55:	01 74 24 10          	add    %esi,0x10(%esp)
    1f59:	01 eb                	add    %ebp,%ebx
    1f5b:	01 74 24 0c          	add    %esi,0xc(%esp)
    1f5f:	8b 74 24 24          	mov    0x24(%esp),%esi
    1f63:	01 74 24 04          	add    %esi,0x4(%esp)
    1f67:	39 f0                	cmp    %esi,%eax
    1f69:	0f 8c 79 fd ff ff    	jl     1ce8 <naive_average_pooling+0xa8>
    1f6f:	83 c4 38             	add    $0x38,%esp
    1f72:	5b                   	pop    %ebx
    1f73:	5e                   	pop    %esi
    1f74:	5f                   	pop    %edi
    1f75:	5d                   	pop    %ebp
    1f76:	c3                   	ret
    1f77:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1f7e:	66 90                	xchg   %ax,%ax
    1f80:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
    1f84:	8b 4c 24 10          	mov    0x10(%esp),%ecx
    1f88:	89 7c 24 50          	mov    %edi,0x50(%esp)
    1f8c:	31 f6                	xor    %esi,%esi
    1f8e:	8b 54 24 08          	mov    0x8(%esp),%edx
    1f92:	8b 7c 24 24          	mov    0x24(%esp),%edi
    1f96:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1f9d:	8d 76 00             	lea    0x0(%esi),%esi
    1fa0:	31 c0                	xor    %eax,%eax
    1fa2:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
    1fa8:	83 c6 01             	add    $0x1,%esi
    1fab:	83 c2 06             	add    $0x6,%edx
    1fae:	66 89 42 fe          	mov    %ax,-0x2(%edx)
    1fb2:	66 0f 6e 09          	movd   (%ecx),%xmm1
    1fb6:	83 c3 0c             	add    $0xc,%ebx
    1fb9:	83 c1 0c             	add    $0xc,%ecx
    1fbc:	66 0f 7e 4a fa       	movd   %xmm1,-0x6(%edx)
    1fc1:	0f b7 41 f8          	movzwl -0x8(%ecx),%eax
    1fc5:	66 89 42 fe          	mov    %ax,-0x2(%edx)
    1fc9:	66 0f 6e 41 fa       	movd   -0x6(%ecx),%xmm0
    1fce:	66 0f fd c1          	paddw  %xmm1,%xmm0
    1fd2:	66 0f 7e 42 fa       	movd   %xmm0,-0x6(%edx)
    1fd7:	66 03 41 fe          	add    -0x2(%ecx),%ax
    1fdb:	66 89 42 fe          	mov    %ax,-0x2(%edx)
    1fdf:	66 0f 6e 4b f4       	movd   -0xc(%ebx),%xmm1
    1fe4:	66 0f fd c8          	paddw  %xmm0,%xmm1
    1fe8:	66 0f 7e 4a fa       	movd   %xmm1,-0x6(%edx)
    1fed:	66 03 43 f8          	add    -0x8(%ebx),%ax
    1ff1:	66 89 42 fe          	mov    %ax,-0x2(%edx)
    1ff5:	66 0f 6e 43 fa       	movd   -0x6(%ebx),%xmm0
    1ffa:	66 03 43 fe          	add    -0x2(%ebx),%ax
    1ffe:	66 0f fd c1          	paddw  %xmm1,%xmm0
    2002:	66 c1 e8 02          	shr    $0x2,%ax
    2006:	66 89 42 fe          	mov    %ax,-0x2(%edx)
    200a:	66 0f 71 d0 02       	psrlw  $0x2,%xmm0
    200f:	66 0f 7e 42 fa       	movd   %xmm0,-0x6(%edx)
    2014:	39 f7                	cmp    %esi,%edi
    2016:	7f 88                	jg     1fa0 <naive_average_pooling+0x360>
    2018:	8b 7c 24 50          	mov    0x50(%esp),%edi
    201c:	e9 1b ff ff ff       	jmp    1f3c <naive_average_pooling+0x2fc>
    2021:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2028:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    202f:	90                   	nop

00002030 <first_average_pooling>:
    2030:	55                   	push   %ebp
    2031:	57                   	push   %edi
    2032:	56                   	push   %esi
    2033:	53                   	push   %ebx
    2034:	83 ec 1c             	sub    $0x1c,%esp
    2037:	8b 44 24 30          	mov    0x30(%esp),%eax
    203b:	89 c2                	mov    %eax,%edx
    203d:	8d 34 00             	lea    (%eax,%eax,1),%esi
    2040:	c1 ea 1f             	shr    $0x1f,%edx
    2043:	89 74 24 14          	mov    %esi,0x14(%esp)
    2047:	01 c2                	add    %eax,%edx
    2049:	d1 fa                	sar    %edx
    204b:	89 54 24 04          	mov    %edx,0x4(%esp)
    204f:	83 f8 01             	cmp    $0x1,%eax
    2052:	0f 8e d8 00 00 00    	jle    2130 <first_average_pooling+0x100>
    2058:	01 f0                	add    %esi,%eax
    205a:	8b 74 24 34          	mov    0x34(%esp),%esi
    205e:	31 db                	xor    %ebx,%ebx
    2060:	31 ed                	xor    %ebp,%ebp
    2062:	89 df                	mov    %ebx,%edi
    2064:	8d 04 46             	lea    (%esi,%eax,2),%eax
    2067:	89 44 24 18          	mov    %eax,0x18(%esp)
    206b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    206f:	90                   	nop
    2070:	8b 74 24 18          	mov    0x18(%esp),%esi
    2074:	8b 54 24 34          	mov    0x34(%esp),%edx
    2078:	8d 04 7f             	lea    (%edi,%edi,2),%eax
    207b:	89 6c 24 08          	mov    %ebp,0x8(%esp)
    207f:	01 c0                	add    %eax,%eax
    2081:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2088:	8d 4c 6d 00          	lea    0x0(%ebp,%ebp,2),%ecx
    208c:	01 c2                	add    %eax,%edx
    208e:	89 7c 24 0c          	mov    %edi,0xc(%esp)
    2092:	01 f0                	add    %esi,%eax
    2094:	8b 74 24 38          	mov    0x38(%esp),%esi
    2098:	89 5c 24 10          	mov    %ebx,0x10(%esp)
    209c:	8d 34 4e             	lea    (%esi,%ecx,2),%esi
    209f:	90                   	nop
    20a0:	0f b7 4a 08          	movzwl 0x8(%edx),%ecx
    20a4:	0f b7 6a 02          	movzwl 0x2(%edx),%ebp
    20a8:	83 c0 0c             	add    $0xc,%eax
    20ab:	83 c2 0c             	add    $0xc,%edx
    20ae:	0f b7 5a f8          	movzwl -0x8(%edx),%ebx
    20b2:	0f b7 7a f4          	movzwl -0xc(%edx),%edi
    20b6:	83 c6 06             	add    $0x6,%esi
    20b9:	01 cd                	add    %ecx,%ebp
    20bb:	0f b7 4a fe          	movzwl -0x2(%edx),%ecx
    20bf:	83 04 24 01          	addl   $0x1,(%esp)
    20c3:	01 cb                	add    %ecx,%ebx
    20c5:	0f b7 4a fa          	movzwl -0x6(%edx),%ecx
    20c9:	01 f9                	add    %edi,%ecx
    20cb:	0f b7 78 f4          	movzwl -0xc(%eax),%edi
    20cf:	01 cf                	add    %ecx,%edi
    20d1:	0f b7 48 f6          	movzwl -0xa(%eax),%ecx
    20d5:	01 e9                	add    %ebp,%ecx
    20d7:	0f b7 68 f8          	movzwl -0x8(%eax),%ebp
    20db:	01 dd                	add    %ebx,%ebp
    20dd:	0f b7 58 fc          	movzwl -0x4(%eax),%ebx
    20e1:	01 cb                	add    %ecx,%ebx
    20e3:	0f b7 48 fe          	movzwl -0x2(%eax),%ecx
    20e7:	c1 fb 02             	sar    $0x2,%ebx
    20ea:	01 e9                	add    %ebp,%ecx
    20ec:	0f b7 68 fa          	movzwl -0x6(%eax),%ebp
    20f0:	66 89 5e fc          	mov    %bx,-0x4(%esi)
    20f4:	c1 f9 02             	sar    $0x2,%ecx
    20f7:	01 fd                	add    %edi,%ebp
    20f9:	66 89 4e fe          	mov    %cx,-0x2(%esi)
    20fd:	8b 3c 24             	mov    (%esp),%edi
    2100:	c1 fd 02             	sar    $0x2,%ebp
    2103:	66 89 6e fa          	mov    %bp,-0x6(%esi)
    2107:	39 7c 24 04          	cmp    %edi,0x4(%esp)
    210b:	7f 93                	jg     20a0 <first_average_pooling+0x70>
    210d:	8b 5c 24 10          	mov    0x10(%esp),%ebx
    2111:	8b 6c 24 08          	mov    0x8(%esp),%ebp
    2115:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    2119:	8b 44 24 04          	mov    0x4(%esp),%eax
    211d:	8b 74 24 14          	mov    0x14(%esp),%esi
    2121:	83 c3 01             	add    $0x1,%ebx
    2124:	01 c5                	add    %eax,%ebp
    2126:	01 f7                	add    %esi,%edi
    2128:	39 d8                	cmp    %ebx,%eax
    212a:	0f 8f 40 ff ff ff    	jg     2070 <first_average_pooling+0x40>
    2130:	83 c4 1c             	add    $0x1c,%esp
    2133:	5b                   	pop    %ebx
    2134:	5e                   	pop    %esi
    2135:	5f                   	pop    %edi
    2136:	5d                   	pop    %ebp
    2137:	c3                   	ret
    2138:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    213f:	90                   	nop

00002140 <average_pooling>:
    2140:	e9 eb fe ff ff       	jmp    2030 <first_average_pooling>
    2145:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    214c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00002150 <convolution>:
    2150:	e9 bb e2 ff ff       	jmp    410 <forth_conv>
    2155:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    215c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00002160 <register_conv_functions>:
    2160:	53                   	push   %ebx
    2161:	e8 fc ff ff ff       	call   2162 <register_conv_functions+0x2>
    2166:	81 c3 02 00 00 00    	add    $0x2,%ebx
    216c:	83 ec 10             	sub    $0x10,%esp
    216f:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
    2175:	50                   	push   %eax
    2176:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
    217c:	50                   	push   %eax
    217d:	e8 fc ff ff ff       	call   217e <register_conv_functions+0x1e>
    2182:	58                   	pop    %eax
    2183:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
    2189:	5a                   	pop    %edx
    218a:	50                   	push   %eax
    218b:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
    2191:	50                   	push   %eax
    2192:	e8 fc ff ff ff       	call   2193 <register_conv_functions+0x33>
    2197:	59                   	pop    %ecx
    2198:	58                   	pop    %eax
    2199:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
    219f:	50                   	push   %eax
    21a0:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
    21a6:	50                   	push   %eax
    21a7:	e8 fc ff ff ff       	call   21a8 <register_conv_functions+0x48>
    21ac:	83 c4 18             	add    $0x18,%esp
    21af:	5b                   	pop    %ebx
    21b0:	c3                   	ret
    21b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    21b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    21bf:	90                   	nop

000021c0 <register_average_pooling_functions>:
    21c0:	53                   	push   %ebx
    21c1:	e8 fc ff ff ff       	call   21c2 <register_average_pooling_functions+0x2>
    21c6:	81 c3 02 00 00 00    	add    $0x2,%ebx
    21cc:	83 ec 10             	sub    $0x10,%esp
    21cf:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
    21d5:	50                   	push   %eax
    21d6:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
    21dc:	50                   	push   %eax
    21dd:	e8 fc ff ff ff       	call   21de <register_average_pooling_functions+0x1e>
    21e2:	58                   	pop    %eax
    21e3:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
    21e9:	5a                   	pop    %edx
    21ea:	50                   	push   %eax
    21eb:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
    21f1:	50                   	push   %eax
    21f2:	e8 fc ff ff ff       	call   21f3 <register_average_pooling_functions+0x33>
    21f7:	59                   	pop    %ecx
    21f8:	58                   	pop    %eax
    21f9:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
    21ff:	50                   	push   %eax
    2200:	8d 83 00 00 00 00    	lea    0x0(%ebx),%eax
    2206:	50                   	push   %eax
    2207:	e8 fc ff ff ff       	call   2208 <register_average_pooling_functions+0x48>
    220c:	83 c4 18             	add    $0x18,%esp
    220f:	5b                   	pop    %ebx
    2210:	c3                   	ret

Disassembly of section .text.__x86.get_pc_thunk.bx:

00000000 <__x86.get_pc_thunk.bx>:
   0:	8b 1c 24             	mov    (%esp),%ebx
   3:	c3                   	ret
