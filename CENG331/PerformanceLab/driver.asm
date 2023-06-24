
driver:     file format elf32-i386


Disassembly of section .init:

00001000 <_init>:
    1000:	f3 0f 1e fb          	endbr32
    1004:	53                   	push   %ebx
    1005:	83 ec 08             	sub    $0x8,%esp
    1008:	e8 d3 01 00 00       	call   11e0 <__x86.get_pc_thunk.bx>
    100d:	81 c3 e7 6f 00 00    	add    $0x6fe7,%ebx
    1013:	8b 83 f0 ff ff ff    	mov    -0x10(%ebx),%eax
    1019:	85 c0                	test   %eax,%eax
    101b:	74 02                	je     101f <_init+0x1f>
    101d:	ff d0                	call   *%eax
    101f:	83 c4 08             	add    $0x8,%esp
    1022:	5b                   	pop    %ebx
    1023:	c3                   	ret

Disassembly of section .plt:

00001030 <strcmp@plt-0x10>:
    1030:	ff b3 04 00 00 00    	push   0x4(%ebx)
    1036:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
    103c:	00 00                	add    %al,(%eax)
	...

00001040 <strcmp@plt>:
    1040:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
    1046:	68 00 00 00 00       	push   $0x0
    104b:	e9 e0 ff ff ff       	jmp    1030 <_init+0x30>

00001050 <__libc_start_main@plt>:
    1050:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
    1056:	68 08 00 00 00       	push   $0x8
    105b:	e9 d0 ff ff ff       	jmp    1030 <_init+0x30>

00001060 <printf@plt>:
    1060:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
    1066:	68 10 00 00 00       	push   $0x10
    106b:	e9 c0 ff ff ff       	jmp    1030 <_init+0x30>

00001070 <times@plt>:
    1070:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
    1076:	68 18 00 00 00       	push   $0x18
    107b:	e9 b0 ff ff ff       	jmp    1030 <_init+0x30>

00001080 <free@plt>:
    1080:	ff a3 1c 00 00 00    	jmp    *0x1c(%ebx)
    1086:	68 20 00 00 00       	push   $0x20
    108b:	e9 a0 ff ff ff       	jmp    1030 <_init+0x30>

00001090 <strdup@plt>:
    1090:	ff a3 20 00 00 00    	jmp    *0x20(%ebx)
    1096:	68 28 00 00 00       	push   $0x28
    109b:	e9 90 ff ff ff       	jmp    1030 <_init+0x30>

000010a0 <fgets@plt>:
    10a0:	ff a3 24 00 00 00    	jmp    *0x24(%ebx)
    10a6:	68 30 00 00 00       	push   $0x30
    10ab:	e9 80 ff ff ff       	jmp    1030 <_init+0x30>

000010b0 <fclose@plt>:
    10b0:	ff a3 28 00 00 00    	jmp    *0x28(%ebx)
    10b6:	68 38 00 00 00       	push   $0x38
    10bb:	e9 70 ff ff ff       	jmp    1030 <_init+0x30>

000010c0 <pow@plt>:
    10c0:	ff a3 2c 00 00 00    	jmp    *0x2c(%ebx)
    10c6:	68 40 00 00 00       	push   $0x40
    10cb:	e9 60 ff ff ff       	jmp    1030 <_init+0x30>

000010d0 <sleep@plt>:
    10d0:	ff a3 30 00 00 00    	jmp    *0x30(%ebx)
    10d6:	68 48 00 00 00       	push   $0x48
    10db:	e9 50 ff ff ff       	jmp    1030 <_init+0x30>

000010e0 <fwrite@plt>:
    10e0:	ff a3 34 00 00 00    	jmp    *0x34(%ebx)
    10e6:	68 50 00 00 00       	push   $0x50
    10eb:	e9 40 ff ff ff       	jmp    1030 <_init+0x30>

000010f0 <malloc@plt>:
    10f0:	ff a3 38 00 00 00    	jmp    *0x38(%ebx)
    10f6:	68 58 00 00 00       	push   $0x58
    10fb:	e9 30 ff ff ff       	jmp    1030 <_init+0x30>

00001100 <puts@plt>:
    1100:	ff a3 3c 00 00 00    	jmp    *0x3c(%ebx)
    1106:	68 60 00 00 00       	push   $0x60
    110b:	e9 20 ff ff ff       	jmp    1030 <_init+0x30>

00001110 <strsep@plt>:
    1110:	ff a3 40 00 00 00    	jmp    *0x40(%ebx)
    1116:	68 68 00 00 00       	push   $0x68
    111b:	e9 10 ff ff ff       	jmp    1030 <_init+0x30>

00001120 <exit@plt>:
    1120:	ff a3 44 00 00 00    	jmp    *0x44(%ebx)
    1126:	68 70 00 00 00       	push   $0x70
    112b:	e9 00 ff ff ff       	jmp    1030 <_init+0x30>

00001130 <srand@plt>:
    1130:	ff a3 48 00 00 00    	jmp    *0x48(%ebx)
    1136:	68 78 00 00 00       	push   $0x78
    113b:	e9 f0 fe ff ff       	jmp    1030 <_init+0x30>

00001140 <fprintf@plt>:
    1140:	ff a3 4c 00 00 00    	jmp    *0x4c(%ebx)
    1146:	68 80 00 00 00       	push   $0x80
    114b:	e9 e0 fe ff ff       	jmp    1030 <_init+0x30>

00001150 <getopt@plt>:
    1150:	ff a3 50 00 00 00    	jmp    *0x50(%ebx)
    1156:	68 88 00 00 00       	push   $0x88
    115b:	e9 d0 fe ff ff       	jmp    1030 <_init+0x30>

00001160 <fopen@plt>:
    1160:	ff a3 54 00 00 00    	jmp    *0x54(%ebx)
    1166:	68 90 00 00 00       	push   $0x90
    116b:	e9 c0 fe ff ff       	jmp    1030 <_init+0x30>

00001170 <putchar@plt>:
    1170:	ff a3 58 00 00 00    	jmp    *0x58(%ebx)
    1176:	68 98 00 00 00       	push   $0x98
    117b:	e9 b0 fe ff ff       	jmp    1030 <_init+0x30>

00001180 <rand@plt>:
    1180:	ff a3 5c 00 00 00    	jmp    *0x5c(%ebx)
    1186:	68 a0 00 00 00       	push   $0xa0
    118b:	e9 a0 fe ff ff       	jmp    1030 <_init+0x30>

00001190 <strtol@plt>:
    1190:	ff a3 60 00 00 00    	jmp    *0x60(%ebx)
    1196:	68 a8 00 00 00       	push   $0xa8
    119b:	e9 90 fe ff ff       	jmp    1030 <_init+0x30>

000011a0 <calloc@plt>:
    11a0:	ff a3 64 00 00 00    	jmp    *0x64(%ebx)
    11a6:	68 b0 00 00 00       	push   $0xb0
    11ab:	e9 80 fe ff ff       	jmp    1030 <_init+0x30>

Disassembly of section .text:

000011b0 <_start>:
    11b0:	f3 0f 1e fb          	endbr32
    11b4:	31 ed                	xor    %ebp,%ebp
    11b6:	5e                   	pop    %esi
    11b7:	89 e1                	mov    %esp,%ecx
    11b9:	83 e4 f0             	and    $0xfffffff0,%esp
    11bc:	50                   	push   %eax
    11bd:	54                   	push   %esp
    11be:	52                   	push   %edx
    11bf:	e8 18 00 00 00       	call   11dc <_start+0x2c>
    11c4:	81 c3 30 6e 00 00    	add    $0x6e30,%ebx
    11ca:	6a 00                	push   $0x0
    11cc:	6a 00                	push   $0x0
    11ce:	51                   	push   %ecx
    11cf:	56                   	push   %esi
    11d0:	ff b3 f4 ff ff ff    	push   -0xc(%ebx)
    11d6:	e8 75 fe ff ff       	call   1050 <__libc_start_main@plt>
    11db:	f4                   	hlt
    11dc:	8b 1c 24             	mov    (%esp),%ebx
    11df:	c3                   	ret

000011e0 <__x86.get_pc_thunk.bx>:
    11e0:	8b 1c 24             	mov    (%esp),%ebx
    11e3:	c3                   	ret
    11e4:	66 90                	xchg   %ax,%ax
    11e6:	66 90                	xchg   %ax,%ax
    11e8:	66 90                	xchg   %ax,%ax
    11ea:	66 90                	xchg   %ax,%ax
    11ec:	66 90                	xchg   %ax,%ax
    11ee:	66 90                	xchg   %ax,%ax

000011f0 <deregister_tm_clones>:
    11f0:	e8 e4 00 00 00       	call   12d9 <__x86.get_pc_thunk.dx>
    11f5:	81 c2 ff 6d 00 00    	add    $0x6dff,%edx
    11fb:	8d 8a 6c 02 00 00    	lea    0x26c(%edx),%ecx
    1201:	8d 82 6c 02 00 00    	lea    0x26c(%edx),%eax
    1207:	39 c8                	cmp    %ecx,%eax
    1209:	74 1d                	je     1228 <deregister_tm_clones+0x38>
    120b:	8b 82 e0 ff ff ff    	mov    -0x20(%edx),%eax
    1211:	85 c0                	test   %eax,%eax
    1213:	74 13                	je     1228 <deregister_tm_clones+0x38>
    1215:	55                   	push   %ebp
    1216:	89 e5                	mov    %esp,%ebp
    1218:	83 ec 14             	sub    $0x14,%esp
    121b:	51                   	push   %ecx
    121c:	ff d0                	call   *%eax
    121e:	83 c4 10             	add    $0x10,%esp
    1221:	c9                   	leave
    1222:	c3                   	ret
    1223:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1227:	90                   	nop
    1228:	c3                   	ret
    1229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001230 <register_tm_clones>:
    1230:	e8 a4 00 00 00       	call   12d9 <__x86.get_pc_thunk.dx>
    1235:	81 c2 bf 6d 00 00    	add    $0x6dbf,%edx
    123b:	55                   	push   %ebp
    123c:	89 e5                	mov    %esp,%ebp
    123e:	53                   	push   %ebx
    123f:	8d 8a 6c 02 00 00    	lea    0x26c(%edx),%ecx
    1245:	8d 82 6c 02 00 00    	lea    0x26c(%edx),%eax
    124b:	83 ec 04             	sub    $0x4,%esp
    124e:	29 c8                	sub    %ecx,%eax
    1250:	89 c3                	mov    %eax,%ebx
    1252:	c1 e8 1f             	shr    $0x1f,%eax
    1255:	c1 fb 02             	sar    $0x2,%ebx
    1258:	01 d8                	add    %ebx,%eax
    125a:	d1 f8                	sar    %eax
    125c:	74 14                	je     1272 <register_tm_clones+0x42>
    125e:	8b 92 f8 ff ff ff    	mov    -0x8(%edx),%edx
    1264:	85 d2                	test   %edx,%edx
    1266:	74 0a                	je     1272 <register_tm_clones+0x42>
    1268:	83 ec 08             	sub    $0x8,%esp
    126b:	50                   	push   %eax
    126c:	51                   	push   %ecx
    126d:	ff d2                	call   *%edx
    126f:	83 c4 10             	add    $0x10,%esp
    1272:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1275:	c9                   	leave
    1276:	c3                   	ret
    1277:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    127e:	66 90                	xchg   %ax,%ax

00001280 <__do_global_dtors_aux>:
    1280:	f3 0f 1e fb          	endbr32
    1284:	55                   	push   %ebp
    1285:	89 e5                	mov    %esp,%ebp
    1287:	53                   	push   %ebx
    1288:	e8 53 ff ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    128d:	81 c3 67 6d 00 00    	add    $0x6d67,%ebx
    1293:	83 ec 04             	sub    $0x4,%esp
    1296:	80 bb 6c 02 00 00 00 	cmpb   $0x0,0x26c(%ebx)
    129d:	75 28                	jne    12c7 <__do_global_dtors_aux+0x47>
    129f:	8b 83 ec ff ff ff    	mov    -0x14(%ebx),%eax
    12a5:	85 c0                	test   %eax,%eax
    12a7:	74 12                	je     12bb <__do_global_dtors_aux+0x3b>
    12a9:	83 ec 0c             	sub    $0xc,%esp
    12ac:	ff b3 70 00 00 00    	push   0x70(%ebx)
    12b2:	ff 93 ec ff ff ff    	call   *-0x14(%ebx)
    12b8:	83 c4 10             	add    $0x10,%esp
    12bb:	e8 30 ff ff ff       	call   11f0 <deregister_tm_clones>
    12c0:	c6 83 6c 02 00 00 01 	movb   $0x1,0x26c(%ebx)
    12c7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    12ca:	c9                   	leave
    12cb:	c3                   	ret
    12cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000012d0 <frame_dummy>:
    12d0:	f3 0f 1e fb          	endbr32
    12d4:	e9 57 ff ff ff       	jmp    1230 <register_tm_clones>

000012d9 <__x86.get_pc_thunk.dx>:
    12d9:	8b 14 24             	mov    (%esp),%edx
    12dc:	c3                   	ret

000012dd <compare_ints>:
    12dd:	39 d0                	cmp    %edx,%eax
    12df:	0f 95 c0             	setne  %al
    12e2:	0f b6 c0             	movzbl %al,%eax
    12e5:	c3                   	ret

000012e6 <compare_pixels>:
    12e6:	83 ec 08             	sub    $0x8,%esp
    12e9:	89 04 24             	mov    %eax,(%esp)
    12ec:	89 54 24 04          	mov    %edx,0x4(%esp)
    12f0:	0f b7 44 24 0c       	movzwl 0xc(%esp),%eax
    12f5:	66 39 04 24          	cmp    %ax,(%esp)
    12f9:	74 09                	je     1304 <compare_pixels+0x1e>
    12fb:	b8 01 00 00 00       	mov    $0x1,%eax
    1300:	83 c4 08             	add    $0x8,%esp
    1303:	c3                   	ret
    1304:	0f b7 44 24 0e       	movzwl 0xe(%esp),%eax
    1309:	66 39 44 24 02       	cmp    %ax,0x2(%esp)
    130e:	74 07                	je     1317 <compare_pixels+0x31>
    1310:	b8 01 00 00 00       	mov    $0x1,%eax
    1315:	eb e9                	jmp    1300 <compare_pixels+0x1a>
    1317:	0f b7 44 24 10       	movzwl 0x10(%esp),%eax
    131c:	66 39 44 24 04       	cmp    %ax,0x4(%esp)
    1321:	74 07                	je     132a <compare_pixels+0x44>
    1323:	b8 01 00 00 00       	mov    $0x1,%eax
    1328:	eb d6                	jmp    1300 <compare_pixels+0x1a>
    132a:	b8 00 00 00 00       	mov    $0x0,%eax
    132f:	eb cf                	jmp    1300 <compare_pixels+0x1a>

00001331 <func_wrapper>:
    1331:	83 ec 0c             	sub    $0xc,%esp
    1334:	8b 44 24 10          	mov    0x10(%esp),%eax
    1338:	8b 10                	mov    (%eax),%edx
    133a:	8b 12                	mov    (%edx),%edx
    133c:	83 fa 03             	cmp    $0x3,%edx
    133f:	74 09                	je     134a <func_wrapper+0x19>
    1341:	83 fa 05             	cmp    $0x5,%edx
    1344:	74 1b                	je     1361 <func_wrapper+0x30>
    1346:	83 c4 0c             	add    $0xc,%esp
    1349:	c3                   	ret
    134a:	8b 50 08             	mov    0x8(%eax),%edx
    134d:	8b 12                	mov    (%edx),%edx
    134f:	83 ec 04             	sub    $0x4,%esp
    1352:	ff 70 10             	push   0x10(%eax)
    1355:	ff 70 0c             	push   0xc(%eax)
    1358:	52                   	push   %edx
    1359:	ff 50 04             	call   *0x4(%eax)
    135c:	83 c4 10             	add    $0x10,%esp
    135f:	eb e5                	jmp    1346 <func_wrapper+0x15>
    1361:	8b 50 08             	mov    0x8(%eax),%edx
    1364:	8b 12                	mov    (%edx),%edx
    1366:	ff 70 14             	push   0x14(%eax)
    1369:	ff 70 10             	push   0x10(%eax)
    136c:	ff 70 0c             	push   0xc(%eax)
    136f:	52                   	push   %edx
    1370:	ff 50 04             	call   *0x4(%eax)
    1373:	83 c4 10             	add    $0x10,%esp
    1376:	eb ce                	jmp    1346 <func_wrapper+0x15>

00001378 <check_orig>:
    1378:	55                   	push   %ebp
    1379:	57                   	push   %edi
    137a:	56                   	push   %esi
    137b:	53                   	push   %ebx
    137c:	83 ec 0c             	sub    $0xc,%esp
    137f:	e8 29 16 00 00       	call   29ad <__x86.get_pc_thunk.di>
    1384:	81 c7 70 6c 00 00    	add    $0x6c70,%edi
    138a:	89 c6                	mov    %eax,%esi
    138c:	bd 00 00 00 00       	mov    $0x0,%ebp
    1391:	39 f5                	cmp    %esi,%ebp
    1393:	7d 7a                	jge    140f <check_orig+0x97>
    1395:	bb 00 00 00 00       	mov    $0x0,%ebx
    139a:	eb 03                	jmp    139f <check_orig+0x27>
    139c:	83 c3 01             	add    $0x1,%ebx
    139f:	39 f3                	cmp    %esi,%ebx
    13a1:	7d 67                	jge    140a <check_orig+0x92>
    13a3:	89 e8                	mov    %ebp,%eax
    13a5:	0f af c6             	imul   %esi,%eax
    13a8:	01 d8                	add    %ebx,%eax
    13aa:	8d 14 40             	lea    (%eax,%eax,2),%edx
    13ad:	01 d2                	add    %edx,%edx
    13af:	89 d0                	mov    %edx,%eax
    13b1:	03 87 b8 02 00 00    	add    0x2b8(%edi),%eax
    13b7:	03 97 c0 02 00 00    	add    0x2c0(%edi),%edx
    13bd:	83 ec 08             	sub    $0x8,%esp
    13c0:	8b 08                	mov    (%eax),%ecx
    13c2:	89 0c 24             	mov    %ecx,(%esp)
    13c5:	0f b7 40 04          	movzwl 0x4(%eax),%eax
    13c9:	66 89 44 24 04       	mov    %ax,0x4(%esp)
    13ce:	8b 02                	mov    (%edx),%eax
    13d0:	0f b7 52 04          	movzwl 0x4(%edx),%edx
    13d4:	e8 0d ff ff ff       	call   12e6 <compare_pixels>
    13d9:	83 c4 08             	add    $0x8,%esp
    13dc:	85 c0                	test   %eax,%eax
    13de:	74 bc                	je     139c <check_orig+0x24>
    13e0:	83 ec 0c             	sub    $0xc,%esp
    13e3:	6a 0a                	push   $0xa
    13e5:	89 fb                	mov    %edi,%ebx
    13e7:	e8 84 fd ff ff       	call   1170 <putchar@plt>
    13ec:	8d 87 14 d0 ff ff    	lea    -0x2fec(%edi),%eax
    13f2:	89 04 24             	mov    %eax,(%esp)
    13f5:	e8 06 fd ff ff       	call   1100 <puts@plt>
    13fa:	83 c4 10             	add    $0x10,%esp
    13fd:	b8 01 00 00 00       	mov    $0x1,%eax
    1402:	83 c4 0c             	add    $0xc,%esp
    1405:	5b                   	pop    %ebx
    1406:	5e                   	pop    %esi
    1407:	5f                   	pop    %edi
    1408:	5d                   	pop    %ebp
    1409:	c3                   	ret
    140a:	83 c5 01             	add    $0x1,%ebp
    140d:	eb 82                	jmp    1391 <check_orig+0x19>
    140f:	b8 00 00 00 00       	mov    $0x0,%eax
    1414:	eb ec                	jmp    1402 <check_orig+0x8a>

00001416 <check_orig2>:
    1416:	55                   	push   %ebp
    1417:	57                   	push   %edi
    1418:	56                   	push   %esi
    1419:	53                   	push   %ebx
    141a:	83 ec 0c             	sub    $0xc,%esp
    141d:	e8 8b 15 00 00       	call   29ad <__x86.get_pc_thunk.di>
    1422:	81 c7 d2 6b 00 00    	add    $0x6bd2,%edi
    1428:	89 c6                	mov    %eax,%esi
    142a:	bd 00 00 00 00       	mov    $0x0,%ebp
    142f:	39 f5                	cmp    %esi,%ebp
    1431:	7d 7a                	jge    14ad <check_orig2+0x97>
    1433:	bb 00 00 00 00       	mov    $0x0,%ebx
    1438:	eb 03                	jmp    143d <check_orig2+0x27>
    143a:	83 c3 01             	add    $0x1,%ebx
    143d:	39 f3                	cmp    %esi,%ebx
    143f:	7d 67                	jge    14a8 <check_orig2+0x92>
    1441:	89 e8                	mov    %ebp,%eax
    1443:	0f af c6             	imul   %esi,%eax
    1446:	01 d8                	add    %ebx,%eax
    1448:	8d 14 40             	lea    (%eax,%eax,2),%edx
    144b:	01 d2                	add    %edx,%edx
    144d:	89 d0                	mov    %edx,%eax
    144f:	03 87 b4 02 00 00    	add    0x2b4(%edi),%eax
    1455:	03 97 bc 02 00 00    	add    0x2bc(%edi),%edx
    145b:	83 ec 08             	sub    $0x8,%esp
    145e:	8b 08                	mov    (%eax),%ecx
    1460:	89 0c 24             	mov    %ecx,(%esp)
    1463:	0f b7 40 04          	movzwl 0x4(%eax),%eax
    1467:	66 89 44 24 04       	mov    %ax,0x4(%esp)
    146c:	8b 02                	mov    (%edx),%eax
    146e:	0f b7 52 04          	movzwl 0x4(%edx),%edx
    1472:	e8 6f fe ff ff       	call   12e6 <compare_pixels>
    1477:	83 c4 08             	add    $0x8,%esp
    147a:	85 c0                	test   %eax,%eax
    147c:	74 bc                	je     143a <check_orig2+0x24>
    147e:	83 ec 0c             	sub    $0xc,%esp
    1481:	6a 0a                	push   $0xa
    1483:	89 fb                	mov    %edi,%ebx
    1485:	e8 e6 fc ff ff       	call   1170 <putchar@plt>
    148a:	8d 87 40 d0 ff ff    	lea    -0x2fc0(%edi),%eax
    1490:	89 04 24             	mov    %eax,(%esp)
    1493:	e8 68 fc ff ff       	call   1100 <puts@plt>
    1498:	83 c4 10             	add    $0x10,%esp
    149b:	b8 01 00 00 00       	mov    $0x1,%eax
    14a0:	83 c4 0c             	add    $0xc,%esp
    14a3:	5b                   	pop    %ebx
    14a4:	5e                   	pop    %esi
    14a5:	5f                   	pop    %edi
    14a6:	5d                   	pop    %ebp
    14a7:	c3                   	ret
    14a8:	83 c5 01             	add    $0x1,%ebp
    14ab:	eb 82                	jmp    142f <check_orig2+0x19>
    14ad:	b8 00 00 00 00       	mov    $0x0,%eax
    14b2:	eb ec                	jmp    14a0 <check_orig2+0x8a>

000014b4 <check_conv>:
    14b4:	55                   	push   %ebp
    14b5:	57                   	push   %edi
    14b6:	56                   	push   %esi
    14b7:	53                   	push   %ebx
    14b8:	83 ec 3c             	sub    $0x3c,%esp
    14bb:	e8 ed 14 00 00       	call   29ad <__x86.get_pc_thunk.di>
    14c0:	81 c7 34 6b 00 00    	add    $0x6b34,%edi
    14c6:	89 7c 24 04          	mov    %edi,0x4(%esp)
    14ca:	89 c7                	mov    %eax,%edi
    14cc:	89 44 24 10          	mov    %eax,0x10(%esp)
    14d0:	e8 a3 fe ff ff       	call   1378 <check_orig>
    14d5:	85 c0                	test   %eax,%eax
    14d7:	74 14                	je     14ed <check_conv+0x39>
    14d9:	c7 44 24 1c 01 00 00 	movl   $0x1,0x1c(%esp)
    14e0:	00 
    14e1:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    14e5:	83 c4 3c             	add    $0x3c,%esp
    14e8:	5b                   	pop    %ebx
    14e9:	5e                   	pop    %esi
    14ea:	5f                   	pop    %edi
    14eb:	5d                   	pop    %ebp
    14ec:	c3                   	ret
    14ed:	89 f8                	mov    %edi,%eax
    14ef:	e8 22 ff ff ff       	call   1416 <check_orig2>
    14f4:	89 c5                	mov    %eax,%ebp
    14f6:	85 c0                	test   %eax,%eax
    14f8:	0f 85 6b 01 00 00    	jne    1669 <check_conv+0x1b5>
    14fe:	89 44 24 0c          	mov    %eax,0xc(%esp)
    1502:	89 44 24 1c          	mov    %eax,0x1c(%esp)
    1506:	e9 da 00 00 00       	jmp    15e5 <check_conv+0x131>
    150b:	8b 44 24 0c          	mov    0xc(%esp),%eax
    150f:	01 f8                	add    %edi,%eax
    1511:	8b 74 24 10          	mov    0x10(%esp),%esi
    1515:	0f af c6             	imul   %esi,%eax
    1518:	8b 74 24 08          	mov    0x8(%esp),%esi
    151c:	8d 0c 16             	lea    (%esi,%edx,1),%ecx
    151f:	01 c8                	add    %ecx,%eax
    1521:	8d 0c 40             	lea    (%eax,%eax,2),%ecx
    1524:	8b 44 24 04          	mov    0x4(%esp),%eax
    1528:	8b 80 c0 02 00 00    	mov    0x2c0(%eax),%eax
    152e:	8d 2c 48             	lea    (%eax,%ecx,2),%ebp
    1531:	0f b7 4d 00          	movzwl 0x0(%ebp),%ecx
    1535:	8d 04 fa             	lea    (%edx,%edi,8),%eax
    1538:	8d 34 40             	lea    (%eax,%eax,2),%esi
    153b:	8b 44 24 04          	mov    0x4(%esp),%eax
    153f:	8b 80 bc 02 00 00    	mov    0x2bc(%eax),%eax
    1545:	8d 34 70             	lea    (%eax,%esi,2),%esi
    1548:	0f b7 06             	movzwl (%esi),%eax
    154b:	0f af c8             	imul   %eax,%ecx
    154e:	01 d9                	add    %ebx,%ecx
    1550:	0f b7 45 02          	movzwl 0x2(%ebp),%eax
    1554:	0f b7 5e 02          	movzwl 0x2(%esi),%ebx
    1558:	0f af c3             	imul   %ebx,%eax
    155b:	01 c8                	add    %ecx,%eax
    155d:	0f b7 5d 04          	movzwl 0x4(%ebp),%ebx
    1561:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    1565:	0f af d9             	imul   %ecx,%ebx
    1568:	01 c3                	add    %eax,%ebx
    156a:	83 c2 01             	add    $0x1,%edx
    156d:	83 fa 07             	cmp    $0x7,%edx
    1570:	7e 99                	jle    150b <check_conv+0x57>
    1572:	83 c7 01             	add    $0x1,%edi
    1575:	83 ff 07             	cmp    $0x7,%edi
    1578:	7f 06                	jg     1580 <check_conv+0xcc>
    157a:	8b 54 24 14          	mov    0x14(%esp),%edx
    157e:	eb ed                	jmp    156d <check_conv+0xb9>
    1580:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    1584:	89 f8                	mov    %edi,%eax
    1586:	8b 54 24 10          	mov    0x10(%esp),%edx
    158a:	0f af c2             	imul   %edx,%eax
    158d:	8b 6c 24 08          	mov    0x8(%esp),%ebp
    1591:	01 e8                	add    %ebp,%eax
    1593:	8b 54 24 04          	mov    0x4(%esp),%edx
    1597:	8b 92 ac 02 00 00    	mov    0x2ac(%edx),%edx
    159d:	8b 34 82             	mov    (%edx,%eax,4),%esi
    15a0:	89 f2                	mov    %esi,%edx
    15a2:	89 d8                	mov    %ebx,%eax
    15a4:	e8 34 fd ff ff       	call   12dd <compare_ints>
    15a9:	85 c0                	test   %eax,%eax
    15ab:	74 15                	je     15c2 <check_conv+0x10e>
    15ad:	83 44 24 1c 01       	addl   $0x1,0x1c(%esp)
    15b2:	89 6c 24 2c          	mov    %ebp,0x2c(%esp)
    15b6:	89 7c 24 28          	mov    %edi,0x28(%esp)
    15ba:	89 74 24 24          	mov    %esi,0x24(%esp)
    15be:	89 5c 24 20          	mov    %ebx,0x20(%esp)
    15c2:	83 44 24 08 01       	addl   $0x1,0x8(%esp)
    15c7:	8b 7c 24 08          	mov    0x8(%esp),%edi
    15cb:	39 7c 24 18          	cmp    %edi,0x18(%esp)
    15cf:	7e 0b                	jle    15dc <check_conv+0x128>
    15d1:	8b 7c 24 14          	mov    0x14(%esp),%edi
    15d5:	bb 00 00 00 00       	mov    $0x0,%ebx
    15da:	eb 99                	jmp    1575 <check_conv+0xc1>
    15dc:	8b 6c 24 14          	mov    0x14(%esp),%ebp
    15e0:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
    15e5:	8b 44 24 10          	mov    0x10(%esp),%eax
    15e9:	83 e8 07             	sub    $0x7,%eax
    15ec:	89 44 24 18          	mov    %eax,0x18(%esp)
    15f0:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    15f4:	39 f8                	cmp    %edi,%eax
    15f6:	7e 0a                	jle    1602 <check_conv+0x14e>
    15f8:	89 6c 24 08          	mov    %ebp,0x8(%esp)
    15fc:	89 6c 24 14          	mov    %ebp,0x14(%esp)
    1600:	eb c5                	jmp    15c7 <check_conv+0x113>
    1602:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
    1607:	0f 84 d4 fe ff ff    	je     14e1 <check_conv+0x2d>
    160d:	83 ec 0c             	sub    $0xc,%esp
    1610:	6a 0a                	push   $0xa
    1612:	8b 5c 24 14          	mov    0x14(%esp),%ebx
    1616:	e8 55 fb ff ff       	call   1170 <putchar@plt>
    161b:	83 c4 0c             	add    $0xc,%esp
    161e:	ff 74 24 20          	push   0x20(%esp)
    1622:	ff 74 24 18          	push   0x18(%esp)
    1626:	8d 83 70 d0 ff ff    	lea    -0x2f90(%ebx),%eax
    162c:	50                   	push   %eax
    162d:	e8 2e fa ff ff       	call   1060 <printf@plt>
    1632:	ff 74 24 34          	push   0x34(%esp)
    1636:	8b 74 24 40          	mov    0x40(%esp),%esi
    163a:	56                   	push   %esi
    163b:	8b 7c 24 40          	mov    0x40(%esp),%edi
    163f:	57                   	push   %edi
    1640:	8d 83 17 d3 ff ff    	lea    -0x2ce9(%ebx),%eax
    1646:	50                   	push   %eax
    1647:	e8 14 fa ff ff       	call   1060 <printf@plt>
    164c:	83 c4 20             	add    $0x20,%esp
    164f:	ff 74 24 20          	push   0x20(%esp)
    1653:	56                   	push   %esi
    1654:	57                   	push   %edi
    1655:	8d 83 90 d0 ff ff    	lea    -0x2f70(%ebx),%eax
    165b:	50                   	push   %eax
    165c:	e8 ff f9 ff ff       	call   1060 <printf@plt>
    1661:	83 c4 10             	add    $0x10,%esp
    1664:	e9 78 fe ff ff       	jmp    14e1 <check_conv+0x2d>
    1669:	c7 44 24 1c 01 00 00 	movl   $0x1,0x1c(%esp)
    1670:	00 
    1671:	e9 6b fe ff ff       	jmp    14e1 <check_conv+0x2d>

00001676 <check_avpol>:
    1676:	55                   	push   %ebp
    1677:	57                   	push   %edi
    1678:	56                   	push   %esi
    1679:	53                   	push   %ebx
    167a:	83 ec 4c             	sub    $0x4c,%esp
    167d:	e8 2b 13 00 00       	call   29ad <__x86.get_pc_thunk.di>
    1682:	81 c7 72 69 00 00    	add    $0x6972,%edi
    1688:	89 7c 24 04          	mov    %edi,0x4(%esp)
    168c:	89 c7                	mov    %eax,%edi
    168e:	e8 e5 fc ff ff       	call   1378 <check_orig>
    1693:	89 44 24 08          	mov    %eax,0x8(%esp)
    1697:	85 c0                	test   %eax,%eax
    1699:	0f 85 db 01 00 00    	jne    187a <check_avpol+0x204>
    169f:	89 44 24 0c          	mov    %eax,0xc(%esp)
    16a3:	89 44 24 14          	mov    %eax,0x14(%esp)
    16a7:	e9 37 01 00 00       	jmp    17e3 <check_avpol+0x16d>
    16ac:	8d 04 0e             	lea    (%esi,%ecx,1),%eax
    16af:	0f af c7             	imul   %edi,%eax
    16b2:	8d 2c 13             	lea    (%ebx,%edx,1),%ebp
    16b5:	01 e8                	add    %ebp,%eax
    16b7:	8d 2c 40             	lea    (%eax,%eax,2),%ebp
    16ba:	8b 44 24 04          	mov    0x4(%esp),%eax
    16be:	8b 80 c0 02 00 00    	mov    0x2c0(%eax),%eax
    16c4:	8d 04 68             	lea    (%eax,%ebp,2),%eax
    16c7:	0f b7 28             	movzwl (%eax),%ebp
    16ca:	66 01 6c 24 3a       	add    %bp,0x3a(%esp)
    16cf:	0f b7 68 02          	movzwl 0x2(%eax),%ebp
    16d3:	66 01 6c 24 3c       	add    %bp,0x3c(%esp)
    16d8:	0f b7 40 04          	movzwl 0x4(%eax),%eax
    16dc:	66 01 44 24 3e       	add    %ax,0x3e(%esp)
    16e1:	83 c2 01             	add    $0x1,%edx
    16e4:	83 fa 01             	cmp    $0x1,%edx
    16e7:	7e c3                	jle    16ac <check_avpol+0x36>
    16e9:	83 c1 01             	add    $0x1,%ecx
    16ec:	83 f9 01             	cmp    $0x1,%ecx
    16ef:	7f 06                	jg     16f7 <check_avpol+0x81>
    16f1:	8b 54 24 08          	mov    0x8(%esp),%edx
    16f5:	eb ed                	jmp    16e4 <check_avpol+0x6e>
    16f7:	0f b7 44 24 3a       	movzwl 0x3a(%esp),%eax
    16fc:	66 c1 e8 02          	shr    $0x2,%ax
    1700:	66 89 44 24 3a       	mov    %ax,0x3a(%esp)
    1705:	0f b7 44 24 3c       	movzwl 0x3c(%esp),%eax
    170a:	66 c1 e8 02          	shr    $0x2,%ax
    170e:	66 89 44 24 3c       	mov    %ax,0x3c(%esp)
    1713:	0f b7 44 24 3e       	movzwl 0x3e(%esp),%eax
    1718:	66 c1 e8 02          	shr    $0x2,%ax
    171c:	66 89 44 24 3e       	mov    %ax,0x3e(%esp)
    1721:	8b 74 24 0c          	mov    0xc(%esp),%esi
    1725:	89 f0                	mov    %esi,%eax
    1727:	c1 e8 1f             	shr    $0x1f,%eax
    172a:	01 f0                	add    %esi,%eax
    172c:	d1 f8                	sar    %eax
    172e:	89 c1                	mov    %eax,%ecx
    1730:	89 f8                	mov    %edi,%eax
    1732:	c1 e8 1f             	shr    $0x1f,%eax
    1735:	01 f8                	add    %edi,%eax
    1737:	d1 f8                	sar    %eax
    1739:	89 4c 24 10          	mov    %ecx,0x10(%esp)
    173d:	0f af c1             	imul   %ecx,%eax
    1740:	89 de                	mov    %ebx,%esi
    1742:	c1 ee 1f             	shr    $0x1f,%esi
    1745:	01 de                	add    %ebx,%esi
    1747:	d1 fe                	sar    %esi
    1749:	01 f0                	add    %esi,%eax
    174b:	8d 14 40             	lea    (%eax,%eax,2),%edx
    174e:	8b 44 24 04          	mov    0x4(%esp),%eax
    1752:	8b 80 b0 02 00 00    	mov    0x2b0(%eax),%eax
    1758:	8d 2c 50             	lea    (%eax,%edx,2),%ebp
    175b:	83 ec 10             	sub    $0x10,%esp
    175e:	8b 45 00             	mov    0x0(%ebp),%eax
    1761:	89 04 24             	mov    %eax,(%esp)
    1764:	0f b7 45 04          	movzwl 0x4(%ebp),%eax
    1768:	66 89 44 24 04       	mov    %ax,0x4(%esp)
    176d:	8b 44 24 4a          	mov    0x4a(%esp),%eax
    1771:	0f b7 54 24 4e       	movzwl 0x4e(%esp),%edx
    1776:	e8 6b fb ff ff       	call   12e6 <compare_pixels>
    177b:	83 c4 10             	add    $0x10,%esp
    177e:	85 c0                	test   %eax,%eax
    1780:	74 33                	je     17b5 <check_avpol+0x13f>
    1782:	8b 45 00             	mov    0x0(%ebp),%eax
    1785:	89 44 24 34          	mov    %eax,0x34(%esp)
    1789:	0f b7 45 04          	movzwl 0x4(%ebp),%eax
    178d:	66 89 44 24 38       	mov    %ax,0x38(%esp)
    1792:	8b 44 24 3a          	mov    0x3a(%esp),%eax
    1796:	89 44 24 2e          	mov    %eax,0x2e(%esp)
    179a:	0f b7 44 24 3e       	movzwl 0x3e(%esp),%eax
    179f:	66 89 44 24 32       	mov    %ax,0x32(%esp)
    17a4:	83 44 24 14 01       	addl   $0x1,0x14(%esp)
    17a9:	89 74 24 1c          	mov    %esi,0x1c(%esp)
    17ad:	8b 4c 24 10          	mov    0x10(%esp),%ecx
    17b1:	89 4c 24 18          	mov    %ecx,0x18(%esp)
    17b5:	83 c3 02             	add    $0x2,%ebx
    17b8:	39 fb                	cmp    %edi,%ebx
    17ba:	7d 22                	jge    17de <check_avpol+0x168>
    17bc:	66 c7 44 24 3a 00 00 	movw   $0x0,0x3a(%esp)
    17c3:	66 c7 44 24 3c 00 00 	movw   $0x0,0x3c(%esp)
    17ca:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%esp)
    17d1:	8b 4c 24 08          	mov    0x8(%esp),%ecx
    17d5:	8b 74 24 0c          	mov    0xc(%esp),%esi
    17d9:	e9 0e ff ff ff       	jmp    16ec <check_avpol+0x76>
    17de:	83 44 24 0c 02       	addl   $0x2,0xc(%esp)
    17e3:	39 7c 24 0c          	cmp    %edi,0xc(%esp)
    17e7:	7d 06                	jge    17ef <check_avpol+0x179>
    17e9:	8b 5c 24 08          	mov    0x8(%esp),%ebx
    17ed:	eb c9                	jmp    17b8 <check_avpol+0x142>
    17ef:	83 7c 24 14 00       	cmpl   $0x0,0x14(%esp)
    17f4:	75 0c                	jne    1802 <check_avpol+0x18c>
    17f6:	8b 44 24 14          	mov    0x14(%esp),%eax
    17fa:	83 c4 4c             	add    $0x4c,%esp
    17fd:	5b                   	pop    %ebx
    17fe:	5e                   	pop    %esi
    17ff:	5f                   	pop    %edi
    1800:	5d                   	pop    %ebp
    1801:	c3                   	ret
    1802:	83 ec 0c             	sub    $0xc,%esp
    1805:	6a 0a                	push   $0xa
    1807:	8b 5c 24 14          	mov    0x14(%esp),%ebx
    180b:	e8 60 f9 ff ff       	call   1170 <putchar@plt>
    1810:	83 c4 0c             	add    $0xc,%esp
    1813:	ff 74 24 18          	push   0x18(%esp)
    1817:	57                   	push   %edi
    1818:	8d 83 70 d0 ff ff    	lea    -0x2f90(%ebx),%eax
    181e:	50                   	push   %eax
    181f:	e8 3c f8 ff ff       	call   1060 <printf@plt>
    1824:	83 c4 08             	add    $0x8,%esp
    1827:	0f b7 44 24 40       	movzwl 0x40(%esp),%eax
    182c:	50                   	push   %eax
    182d:	0f b7 44 24 42       	movzwl 0x42(%esp),%eax
    1832:	50                   	push   %eax
    1833:	0f b7 44 24 44       	movzwl 0x44(%esp),%eax
    1838:	50                   	push   %eax
    1839:	8b 74 24 30          	mov    0x30(%esp),%esi
    183d:	56                   	push   %esi
    183e:	8b 7c 24 30          	mov    0x30(%esp),%edi
    1842:	57                   	push   %edi
    1843:	8d 83 b0 d0 ff ff    	lea    -0x2f50(%ebx),%eax
    1849:	50                   	push   %eax
    184a:	e8 11 f8 ff ff       	call   1060 <printf@plt>
    184f:	83 c4 18             	add    $0x18,%esp
    1852:	0f b7 44 24 3a       	movzwl 0x3a(%esp),%eax
    1857:	50                   	push   %eax
    1858:	0f b7 44 24 3c       	movzwl 0x3c(%esp),%eax
    185d:	50                   	push   %eax
    185e:	0f b7 44 24 3e       	movzwl 0x3e(%esp),%eax
    1863:	50                   	push   %eax
    1864:	56                   	push   %esi
    1865:	57                   	push   %edi
    1866:	8d 83 e4 d0 ff ff    	lea    -0x2f1c(%ebx),%eax
    186c:	50                   	push   %eax
    186d:	e8 ee f7 ff ff       	call   1060 <printf@plt>
    1872:	83 c4 20             	add    $0x20,%esp
    1875:	e9 7c ff ff ff       	jmp    17f6 <check_avpol+0x180>
    187a:	c7 44 24 14 01 00 00 	movl   $0x1,0x14(%esp)
    1881:	00 
    1882:	e9 6f ff ff ff       	jmp    17f6 <check_avpol+0x180>

00001887 <random_in_interval>:
    1887:	57                   	push   %edi
    1888:	56                   	push   %esi
    1889:	53                   	push   %ebx
    188a:	e8 51 f9 ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    188f:	81 c3 65 67 00 00    	add    $0x6765,%ebx
    1895:	89 c6                	mov    %eax,%esi
    1897:	89 d7                	mov    %edx,%edi
    1899:	29 c7                	sub    %eax,%edi
    189b:	e8 e0 f8 ff ff       	call   1180 <rand@plt>
    18a0:	99                   	cltd
    18a1:	f7 ff                	idiv   %edi
    18a3:	8d 04 32             	lea    (%edx,%esi,1),%eax
    18a6:	5b                   	pop    %ebx
    18a7:	5e                   	pop    %esi
    18a8:	5f                   	pop    %edi
    18a9:	c3                   	ret

000018aa <create>:
    18aa:	55                   	push   %ebp
    18ab:	57                   	push   %edi
    18ac:	56                   	push   %esi
    18ad:	53                   	push   %ebx
    18ae:	83 ec 1c             	sub    $0x1c,%esp
    18b1:	e8 f3 10 00 00       	call   29a9 <__x86.get_pc_thunk.si>
    18b6:	81 c6 3e 67 00 00    	add    $0x673e,%esi
    18bc:	89 04 24             	mov    %eax,(%esp)
    18bf:	8d 86 ec 02 c2 01    	lea    0x1c202ec(%esi),%eax
    18c5:	89 86 c0 02 00 00    	mov    %eax,0x2c0(%esi)
    18cb:	8d 86 cc 02 00 00    	lea    0x2cc(%esi),%eax
    18d1:	89 86 bc 02 00 00    	mov    %eax,0x2bc(%esi)
    18d7:	eb 09                	jmp    18e2 <create+0x38>
    18d9:	83 c1 01             	add    $0x1,%ecx
    18dc:	89 8e c0 02 00 00    	mov    %ecx,0x2c0(%esi)
    18e2:	8b 8e c0 02 00 00    	mov    0x2c0(%esi),%ecx
    18e8:	f6 c1 1f             	test   $0x1f,%cl
    18eb:	75 ec                	jne    18d9 <create+0x2f>
    18ed:	8b 04 24             	mov    (%esp),%eax
    18f0:	89 c3                	mov    %eax,%ebx
    18f2:	0f af d8             	imul   %eax,%ebx
    18f5:	8d 14 5b             	lea    (%ebx,%ebx,2),%edx
    18f8:	01 d2                	add    %edx,%edx
    18fa:	01 d1                	add    %edx,%ecx
    18fc:	89 8e b0 02 00 00    	mov    %ecx,0x2b0(%esi)
    1902:	01 d1                	add    %edx,%ecx
    1904:	89 8e b8 02 00 00    	mov    %ecx,0x2b8(%esi)
    190a:	bd 00 00 00 00       	mov    $0x0,%ebp
    190f:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    1913:	89 e9                	mov    %ebp,%ecx
    1915:	89 c5                	mov    %eax,%ebp
    1917:	89 54 24 0c          	mov    %edx,0xc(%esp)
    191b:	e9 ab 00 00 00       	jmp    19cb <create+0x121>
    1920:	ba ff 00 00 00       	mov    $0xff,%edx
    1925:	b8 00 00 00 00       	mov    $0x0,%eax
    192a:	e8 58 ff ff ff       	call   1887 <random_in_interval>
    192f:	89 c2                	mov    %eax,%edx
    1931:	8b 44 24 04          	mov    0x4(%esp),%eax
    1935:	0f af c5             	imul   %ebp,%eax
    1938:	01 f8                	add    %edi,%eax
    193a:	8d 1c 40             	lea    (%eax,%eax,2),%ebx
    193d:	01 db                	add    %ebx,%ebx
    193f:	89 d8                	mov    %ebx,%eax
    1941:	03 86 c0 02 00 00    	add    0x2c0(%esi),%eax
    1947:	66 89 10             	mov    %dx,(%eax)
    194a:	ba ff 00 00 00       	mov    $0xff,%edx
    194f:	b8 00 00 00 00       	mov    $0x0,%eax
    1954:	e8 2e ff ff ff       	call   1887 <random_in_interval>
    1959:	89 c2                	mov    %eax,%edx
    195b:	89 d8                	mov    %ebx,%eax
    195d:	03 86 c0 02 00 00    	add    0x2c0(%esi),%eax
    1963:	66 89 50 02          	mov    %dx,0x2(%eax)
    1967:	ba ff 00 00 00       	mov    $0xff,%edx
    196c:	b8 00 00 00 00       	mov    $0x0,%eax
    1971:	e8 11 ff ff ff       	call   1887 <random_in_interval>
    1976:	89 c2                	mov    %eax,%edx
    1978:	89 d8                	mov    %ebx,%eax
    197a:	03 86 c0 02 00 00    	add    0x2c0(%esi),%eax
    1980:	66 89 50 04          	mov    %dx,0x4(%eax)
    1984:	89 da                	mov    %ebx,%edx
    1986:	03 96 b8 02 00 00    	add    0x2b8(%esi),%edx
    198c:	0f b7 08             	movzwl (%eax),%ecx
    198f:	66 89 0a             	mov    %cx,(%edx)
    1992:	0f b7 48 02          	movzwl 0x2(%eax),%ecx
    1996:	66 89 4a 02          	mov    %cx,0x2(%edx)
    199a:	0f b7 40 04          	movzwl 0x4(%eax),%eax
    199e:	66 89 42 04          	mov    %ax,0x4(%edx)
    19a2:	03 9e b0 02 00 00    	add    0x2b0(%esi),%ebx
    19a8:	66 c7 03 00 00       	movw   $0x0,(%ebx)
    19ad:	66 c7 43 02 00 00    	movw   $0x0,0x2(%ebx)
    19b3:	66 c7 43 04 00 00    	movw   $0x0,0x4(%ebx)
    19b9:	83 c7 01             	add    $0x1,%edi
    19bc:	39 ef                	cmp    %ebp,%edi
    19be:	0f 8c 5c ff ff ff    	jl     1920 <create+0x76>
    19c4:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    19c8:	83 c1 01             	add    $0x1,%ecx
    19cb:	39 e9                	cmp    %ebp,%ecx
    19cd:	7d 0b                	jge    19da <create+0x130>
    19cf:	bf 00 00 00 00       	mov    $0x0,%edi
    19d4:	89 4c 24 04          	mov    %ecx,0x4(%esp)
    19d8:	eb e2                	jmp    19bc <create+0x112>
    19da:	8b 5c 24 08          	mov    0x8(%esp),%ebx
    19de:	8b 54 24 0c          	mov    0xc(%esp),%edx
    19e2:	eb 09                	jmp    19ed <create+0x143>
    19e4:	83 c1 01             	add    $0x1,%ecx
    19e7:	89 8e bc 02 00 00    	mov    %ecx,0x2bc(%esi)
    19ed:	8b 8e bc 02 00 00    	mov    0x2bc(%esi),%ecx
    19f3:	f6 c1 1f             	test   $0x1f,%cl
    19f6:	75 ec                	jne    19e4 <create+0x13a>
    19f8:	01 d1                	add    %edx,%ecx
    19fa:	89 8e ac 02 00 00    	mov    %ecx,0x2ac(%esi)
    1a00:	8d 04 99             	lea    (%ecx,%ebx,4),%eax
    1a03:	89 86 b4 02 00 00    	mov    %eax,0x2b4(%esi)
    1a09:	ba 00 00 00 00       	mov    $0x0,%edx
    1a0e:	e9 a5 00 00 00       	jmp    1ab8 <create+0x20e>
    1a13:	ba 05 00 00 00       	mov    $0x5,%edx
    1a18:	b8 00 00 00 00       	mov    $0x0,%eax
    1a1d:	e8 65 fe ff ff       	call   1887 <random_in_interval>
    1a22:	89 c2                	mov    %eax,%edx
    1a24:	8b 7c 24 04          	mov    0x4(%esp),%edi
    1a28:	8b 04 24             	mov    (%esp),%eax
    1a2b:	0f af f8             	imul   %eax,%edi
    1a2e:	01 ef                	add    %ebp,%edi
    1a30:	8d 1c 7f             	lea    (%edi,%edi,2),%ebx
    1a33:	01 db                	add    %ebx,%ebx
    1a35:	89 d8                	mov    %ebx,%eax
    1a37:	03 86 bc 02 00 00    	add    0x2bc(%esi),%eax
    1a3d:	66 89 10             	mov    %dx,(%eax)
    1a40:	ba 05 00 00 00       	mov    $0x5,%edx
    1a45:	b8 00 00 00 00       	mov    $0x0,%eax
    1a4a:	e8 38 fe ff ff       	call   1887 <random_in_interval>
    1a4f:	89 c2                	mov    %eax,%edx
    1a51:	89 d8                	mov    %ebx,%eax
    1a53:	03 86 bc 02 00 00    	add    0x2bc(%esi),%eax
    1a59:	66 89 50 02          	mov    %dx,0x2(%eax)
    1a5d:	ba 05 00 00 00       	mov    $0x5,%edx
    1a62:	b8 00 00 00 00       	mov    $0x0,%eax
    1a67:	e8 1b fe ff ff       	call   1887 <random_in_interval>
    1a6c:	89 c2                	mov    %eax,%edx
    1a6e:	89 d8                	mov    %ebx,%eax
    1a70:	03 86 bc 02 00 00    	add    0x2bc(%esi),%eax
    1a76:	66 89 50 04          	mov    %dx,0x4(%eax)
    1a7a:	03 9e b4 02 00 00    	add    0x2b4(%esi),%ebx
    1a80:	0f b7 10             	movzwl (%eax),%edx
    1a83:	66 89 13             	mov    %dx,(%ebx)
    1a86:	0f b7 50 02          	movzwl 0x2(%eax),%edx
    1a8a:	66 89 53 02          	mov    %dx,0x2(%ebx)
    1a8e:	0f b7 40 04          	movzwl 0x4(%eax),%eax
    1a92:	66 89 43 04          	mov    %ax,0x4(%ebx)
    1a96:	8b 86 ac 02 00 00    	mov    0x2ac(%esi),%eax
    1a9c:	c7 04 b8 00 00 00 00 	movl   $0x0,(%eax,%edi,4)
    1aa3:	83 c5 01             	add    $0x1,%ebp
    1aa6:	8b 04 24             	mov    (%esp),%eax
    1aa9:	39 c5                	cmp    %eax,%ebp
    1aab:	0f 8c 62 ff ff ff    	jl     1a13 <create+0x169>
    1ab1:	8b 54 24 04          	mov    0x4(%esp),%edx
    1ab5:	83 c2 01             	add    $0x1,%edx
    1ab8:	8b 04 24             	mov    (%esp),%eax
    1abb:	39 c2                	cmp    %eax,%edx
    1abd:	7d 0b                	jge    1aca <create+0x220>
    1abf:	bd 00 00 00 00       	mov    $0x0,%ebp
    1ac4:	89 54 24 04          	mov    %edx,0x4(%esp)
    1ac8:	eb dc                	jmp    1aa6 <create+0x1fc>
    1aca:	83 c4 1c             	add    $0x1c,%esp
    1acd:	5b                   	pop    %ebx
    1ace:	5e                   	pop    %esi
    1acf:	5f                   	pop    %edi
    1ad0:	5d                   	pop    %ebp
    1ad1:	c3                   	ret

00001ad2 <add_conv_function>:
    1ad2:	56                   	push   %esi
    1ad3:	53                   	push   %ebx
    1ad4:	e8 cc 0e 00 00       	call   29a5 <__x86.get_pc_thunk.ax>
    1ad9:	05 1b 65 00 00       	add    $0x651b,%eax
    1ade:	8b 90 10 03 84 03    	mov    0x3840310(%eax),%edx
    1ae4:	6b ca 38             	imul   $0x38,%edx,%ecx
    1ae7:	8d 9c 08 0c 19 84 03 	lea    0x384190c(%eax,%ecx,1),%ebx
    1aee:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
    1af4:	8b 74 24 0c          	mov    0xc(%esp),%esi
    1af8:	89 73 04             	mov    %esi,0x4(%ebx)
    1afb:	8b 74 24 10          	mov    0x10(%esp),%esi
    1aff:	89 73 30             	mov    %esi,0x30(%ebx)
    1b02:	66 c7 43 34 00 00    	movw   $0x0,0x34(%ebx)
    1b08:	83 c2 01             	add    $0x1,%edx
    1b0b:	89 90 10 03 84 03    	mov    %edx,0x3840310(%eax)
    1b11:	5b                   	pop    %ebx
    1b12:	5e                   	pop    %esi
    1b13:	c3                   	ret

00001b14 <add_average_pooling_function>:
    1b14:	56                   	push   %esi
    1b15:	53                   	push   %ebx
    1b16:	e8 8a 0e 00 00       	call   29a5 <__x86.get_pc_thunk.ax>
    1b1b:	05 d9 64 00 00       	add    $0x64d9,%eax
    1b20:	8b 90 0c 03 84 03    	mov    0x384030c(%eax),%edx
    1b26:	6b ca 38             	imul   $0x38,%edx,%ecx
    1b29:	8d 9c 08 2c 03 84 03 	lea    0x384032c(%eax,%ecx,1),%ebx
    1b30:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
    1b36:	8b 74 24 0c          	mov    0xc(%esp),%esi
    1b3a:	89 73 04             	mov    %esi,0x4(%ebx)
    1b3d:	8b 74 24 10          	mov    0x10(%esp),%esi
    1b41:	89 73 30             	mov    %esi,0x30(%ebx)
    1b44:	66 c7 43 34 00 00    	movw   $0x0,0x34(%ebx)
    1b4a:	83 c2 01             	add    $0x1,%edx
    1b4d:	89 90 0c 03 84 03    	mov    %edx,0x384030c(%eax)
    1b53:	5b                   	pop    %ebx
    1b54:	5e                   	pop    %esi
    1b55:	c3                   	ret

00001b56 <run_conv_benchmark>:
    1b56:	83 ec 0c             	sub    $0xc,%esp
    1b59:	e8 47 0e 00 00       	call   29a5 <__x86.get_pc_thunk.ax>
    1b5e:	05 96 64 00 00       	add    $0x6496,%eax
    1b63:	6b 54 24 10 38       	imul   $0x38,0x10(%esp),%edx
    1b68:	ff b0 ac 02 00 00    	push   0x2ac(%eax)
    1b6e:	ff b0 bc 02 00 00    	push   0x2bc(%eax)
    1b74:	ff b0 c0 02 00 00    	push   0x2c0(%eax)
    1b7a:	ff 74 24 20          	push   0x20(%esp)
    1b7e:	ff 94 10 10 19 84 03 	call   *0x3841910(%eax,%edx,1)
    1b85:	83 c4 1c             	add    $0x1c,%esp
    1b88:	c3                   	ret

00001b89 <test_conv>:
    1b89:	55                   	push   %ebp
    1b8a:	57                   	push   %edi
    1b8b:	56                   	push   %esi
    1b8c:	53                   	push   %ebx
    1b8d:	83 ec 4c             	sub    $0x4c,%esp
    1b90:	e8 4b f6 ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    1b95:	81 c3 5f 64 00 00    	add    $0x645f,%ebx
    1b9b:	8b 74 24 60          	mov    0x60(%esp),%esi
    1b9f:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    1ba5:	89 44 24 3c          	mov    %eax,0x3c(%esp)
    1ba9:	31 c0                	xor    %eax,%eax
    1bab:	6b c6 38             	imul   $0x38,%esi,%eax
    1bae:	8b 84 03 3c 19 84 03 	mov    0x384193c(%ebx,%eax,1),%eax
    1bb5:	89 44 24 0c          	mov    %eax,0xc(%esp)
    1bb9:	bf 00 00 00 00       	mov    $0x0,%edi
    1bbe:	e9 ba 00 00 00       	jmp    1c7d <test_conv+0xf4>
    1bc3:	83 ec 04             	sub    $0x4,%esp
    1bc6:	6a 60                	push   $0x60
    1bc8:	6b f6 38             	imul   $0x38,%esi,%esi
    1bcb:	ff b4 33 3c 19 84 03 	push   0x384193c(%ebx,%esi,1)
    1bd2:	8d 83 1c d1 ff ff    	lea    -0x2ee4(%ebx),%eax
    1bd8:	50                   	push   %eax
    1bd9:	e8 82 f4 ff ff       	call   1060 <printf@plt>
    1bde:	83 c4 10             	add    $0x10,%esp
    1be1:	e9 f6 02 00 00       	jmp    1edc <test_conv+0x353>
    1be6:	89 6c 24 1c          	mov    %ebp,0x1c(%esp)
    1bea:	89 2c 24             	mov    %ebp,(%esp)
    1bed:	db 04 24             	fildl  (%esp)
    1bf0:	d8 c8                	fmul   %st(0),%st
    1bf2:	dd 1c 24             	fstpl  (%esp)
    1bf5:	c7 44 24 20 05 00 00 	movl   $0x5,0x20(%esp)
    1bfc:	00 
    1bfd:	8d 44 24 20          	lea    0x20(%esp),%eax
    1c01:	89 44 24 24          	mov    %eax,0x24(%esp)
    1c05:	8d 15 0c 19 84 03    	lea    0x384190c,%edx
    1c0b:	6b c6 38             	imul   $0x38,%esi,%eax
    1c0e:	01 d8                	add    %ebx,%eax
    1c10:	89 54 24 08          	mov    %edx,0x8(%esp)
    1c14:	8b 44 02 04          	mov    0x4(%edx,%eax,1),%eax
    1c18:	89 44 24 28          	mov    %eax,0x28(%esp)
    1c1c:	8d 44 24 1c          	lea    0x1c(%esp),%eax
    1c20:	89 44 24 2c          	mov    %eax,0x2c(%esp)
    1c24:	8b 83 c0 02 00 00    	mov    0x2c0(%ebx),%eax
    1c2a:	89 44 24 30          	mov    %eax,0x30(%esp)
    1c2e:	8b 83 bc 02 00 00    	mov    0x2bc(%ebx),%eax
    1c34:	89 44 24 34          	mov    %eax,0x34(%esp)
    1c38:	8b 83 ac 02 00 00    	mov    0x2ac(%ebx),%eax
    1c3e:	89 44 24 38          	mov    %eax,0x38(%esp)
    1c42:	89 e8                	mov    %ebp,%eax
    1c44:	e8 61 fc ff ff       	call   18aa <create>
    1c49:	83 ec 08             	sub    $0x8,%esp
    1c4c:	8d 44 24 2c          	lea    0x2c(%esp),%eax
    1c50:	50                   	push   %eax
    1c51:	8d 83 3d 93 ff ff    	lea    -0x6cc3(%ebx),%eax
    1c57:	50                   	push   %eax
    1c58:	e8 69 21 00 00       	call   3dc6 <fcyc_v>
    1c5d:	dc 74 24 10          	fdivl  0x10(%esp)
    1c61:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
    1c68:	29 f0                	sub    %esi,%eax
    1c6a:	01 f8                	add    %edi,%eax
    1c6c:	8d 04 c3             	lea    (%ebx,%eax,8),%eax
    1c6f:	8b 4c 24 18          	mov    0x18(%esp),%ecx
    1c73:	dd 5c 01 08          	fstpl  0x8(%ecx,%eax,1)
    1c77:	83 c7 01             	add    $0x1,%edi
    1c7a:	83 c4 10             	add    $0x10,%esp
    1c7d:	83 ff 04             	cmp    $0x4,%edi
    1c80:	7f 76                	jg     1cf8 <test_conv+0x16f>
    1c82:	b8 60 00 00 00       	mov    $0x60,%eax
    1c87:	e8 1e fc ff ff       	call   18aa <create>
    1c8c:	83 ec 08             	sub    $0x8,%esp
    1c8f:	6a 60                	push   $0x60
    1c91:	56                   	push   %esi
    1c92:	e8 bf fe ff ff       	call   1b56 <run_conv_benchmark>
    1c97:	b8 60 00 00 00       	mov    $0x60,%eax
    1c9c:	e8 13 f8 ff ff       	call   14b4 <check_conv>
    1ca1:	83 c4 10             	add    $0x10,%esp
    1ca4:	85 c0                	test   %eax,%eax
    1ca6:	0f 85 17 ff ff ff    	jne    1bc3 <test_conv+0x3a>
    1cac:	8b ac bb 88 d5 ff ff 	mov    -0x2a78(%ebx,%edi,4),%ebp
    1cb3:	89 e8                	mov    %ebp,%eax
    1cb5:	e8 f0 fb ff ff       	call   18aa <create>
    1cba:	83 ec 08             	sub    $0x8,%esp
    1cbd:	55                   	push   %ebp
    1cbe:	56                   	push   %esi
    1cbf:	e8 92 fe ff ff       	call   1b56 <run_conv_benchmark>
    1cc4:	89 e8                	mov    %ebp,%eax
    1cc6:	e8 e9 f7 ff ff       	call   14b4 <check_conv>
    1ccb:	83 c4 10             	add    $0x10,%esp
    1cce:	85 c0                	test   %eax,%eax
    1cd0:	0f 84 10 ff ff ff    	je     1be6 <test_conv+0x5d>
    1cd6:	83 ec 04             	sub    $0x4,%esp
    1cd9:	55                   	push   %ebp
    1cda:	6b f6 38             	imul   $0x38,%esi,%esi
    1cdd:	ff b4 33 3c 19 84 03 	push   0x384193c(%ebx,%esi,1)
    1ce4:	8d 83 1c d1 ff ff    	lea    -0x2ee4(%ebx),%eax
    1cea:	50                   	push   %eax
    1ceb:	e8 70 f3 ff ff       	call   1060 <printf@plt>
    1cf0:	83 c4 10             	add    $0x10,%esp
    1cf3:	e9 e4 01 00 00       	jmp    1edc <test_conv+0x353>
    1cf8:	83 ec 08             	sub    $0x8,%esp
    1cfb:	ff 74 24 14          	push   0x14(%esp)
    1cff:	8d 83 32 d3 ff ff    	lea    -0x2cce(%ebx),%eax
    1d05:	50                   	push   %eax
    1d06:	e8 55 f3 ff ff       	call   1060 <printf@plt>
    1d0b:	8d 83 47 d3 ff ff    	lea    -0x2cb9(%ebx),%eax
    1d11:	89 04 24             	mov    %eax,(%esp)
    1d14:	e8 47 f3 ff ff       	call   1060 <printf@plt>
    1d19:	83 c4 10             	add    $0x10,%esp
    1d1c:	bf 00 00 00 00       	mov    $0x0,%edi
    1d21:	eb 1c                	jmp    1d3f <test_conv+0x1b6>
    1d23:	83 ec 08             	sub    $0x8,%esp
    1d26:	ff b4 bb 88 d5 ff ff 	push   -0x2a78(%ebx,%edi,4)
    1d2d:	8d 83 4c d3 ff ff    	lea    -0x2cb4(%ebx),%eax
    1d33:	50                   	push   %eax
    1d34:	e8 27 f3 ff ff       	call   1060 <printf@plt>
    1d39:	83 c7 01             	add    $0x1,%edi
    1d3c:	83 c4 10             	add    $0x10,%esp
    1d3f:	83 ff 04             	cmp    $0x4,%edi
    1d42:	7e df                	jle    1d23 <test_conv+0x19a>
    1d44:	83 ec 0c             	sub    $0xc,%esp
    1d47:	8d 83 50 d3 ff ff    	lea    -0x2cb0(%ebx),%eax
    1d4d:	50                   	push   %eax
    1d4e:	e8 ad f3 ff ff       	call   1100 <puts@plt>
    1d53:	8d 83 56 d3 ff ff    	lea    -0x2caa(%ebx),%eax
    1d59:	89 04 24             	mov    %eax,(%esp)
    1d5c:	e8 ff f2 ff ff       	call   1060 <printf@plt>
    1d61:	83 c4 10             	add    $0x10,%esp
    1d64:	bf 00 00 00 00       	mov    $0x0,%edi
    1d69:	eb 2e                	jmp    1d99 <test_conv+0x210>
    1d6b:	83 ec 04             	sub    $0x4,%esp
    1d6e:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
    1d75:	29 f0                	sub    %esi,%eax
    1d77:	01 f8                	add    %edi,%eax
    1d79:	ff b4 c3 18 19 84 03 	push   0x3841918(%ebx,%eax,8)
    1d80:	ff b4 c3 14 19 84 03 	push   0x3841914(%ebx,%eax,8)
    1d87:	8d 83 60 d3 ff ff    	lea    -0x2ca0(%ebx),%eax
    1d8d:	50                   	push   %eax
    1d8e:	e8 cd f2 ff ff       	call   1060 <printf@plt>
    1d93:	83 c7 01             	add    $0x1,%edi
    1d96:	83 c4 10             	add    $0x10,%esp
    1d99:	83 ff 04             	cmp    $0x4,%edi
    1d9c:	7e cd                	jle    1d6b <test_conv+0x1e2>
    1d9e:	83 ec 0c             	sub    $0xc,%esp
    1da1:	6a 0a                	push   $0xa
    1da3:	e8 c8 f3 ff ff       	call   1170 <putchar@plt>
    1da8:	8d 83 66 d3 ff ff    	lea    -0x2c9a(%ebx),%eax
    1dae:	89 04 24             	mov    %eax,(%esp)
    1db1:	e8 aa f2 ff ff       	call   1060 <printf@plt>
    1db6:	83 c4 10             	add    $0x10,%esp
    1db9:	bf 00 00 00 00       	mov    $0x0,%edi
    1dbe:	eb 23                	jmp    1de3 <test_conv+0x25a>
    1dc0:	83 ec 04             	sub    $0x4,%esp
    1dc3:	ff b4 fb 50 d5 ff ff 	push   -0x2ab0(%ebx,%edi,8)
    1dca:	ff b4 fb 4c d5 ff ff 	push   -0x2ab4(%ebx,%edi,8)
    1dd1:	8d 83 60 d3 ff ff    	lea    -0x2ca0(%ebx),%eax
    1dd7:	50                   	push   %eax
    1dd8:	e8 83 f2 ff ff       	call   1060 <printf@plt>
    1ddd:	83 c7 01             	add    $0x1,%edi
    1de0:	83 c4 10             	add    $0x10,%esp
    1de3:	83 ff 04             	cmp    $0x4,%edi
    1de6:	7e d8                	jle    1dc0 <test_conv+0x237>
    1de8:	83 ec 0c             	sub    $0xc,%esp
    1deb:	6a 0a                	push   $0xa
    1ded:	e8 7e f3 ff ff       	call   1170 <putchar@plt>
    1df2:	8d 83 74 d3 ff ff    	lea    -0x2c8c(%ebx),%eax
    1df8:	89 04 24             	mov    %eax,(%esp)
    1dfb:	e8 60 f2 ff ff       	call   1060 <printf@plt>
    1e00:	83 c4 10             	add    $0x10,%esp
    1e03:	d9 e8                	fld1
    1e05:	dd 1c 24             	fstpl  (%esp)
    1e08:	bf 00 00 00 00       	mov    $0x0,%edi
    1e0d:	83 ff 04             	cmp    $0x4,%edi
    1e10:	7f 60                	jg     1e72 <test_conv+0x2e9>
    1e12:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
    1e19:	29 f0                	sub    %esi,%eax
    1e1b:	01 f8                	add    %edi,%eax
    1e1d:	d9 ee                	fldz
    1e1f:	dd 84 c3 14 19 84 03 	fldl   0x3841914(%ebx,%eax,8)
    1e26:	db f1                	fcomi  %st(1),%st
    1e28:	dd d9                	fstp   %st(1)
    1e2a:	76 29                	jbe    1e55 <test_conv+0x2cc>
    1e2c:	dc bc fb 4c d5 ff ff 	fdivrl -0x2ab4(%ebx,%edi,8)
    1e33:	dd 04 24             	fldl   (%esp)
    1e36:	d8 c9                	fmul   %st(1),%st
    1e38:	dd 1c 24             	fstpl  (%esp)
    1e3b:	83 ec 0c             	sub    $0xc,%esp
    1e3e:	dd 1c 24             	fstpl  (%esp)
    1e41:	8d 83 60 d3 ff ff    	lea    -0x2ca0(%ebx),%eax
    1e47:	50                   	push   %eax
    1e48:	e8 13 f2 ff ff       	call   1060 <printf@plt>
    1e4d:	83 c7 01             	add    $0x1,%edi
    1e50:	83 c4 10             	add    $0x10,%esp
    1e53:	eb b8                	jmp    1e0d <test_conv+0x284>
    1e55:	dd d8                	fstp   %st(0)
    1e57:	83 ec 0c             	sub    $0xc,%esp
    1e5a:	8d 83 58 d1 ff ff    	lea    -0x2ea8(%ebx),%eax
    1e60:	50                   	push   %eax
    1e61:	e8 9a f2 ff ff       	call   1100 <puts@plt>
    1e66:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1e6d:	e8 ae f2 ff ff       	call   1120 <exit@plt>
    1e72:	68 99 99 c9 3f       	push   $0x3fc99999
    1e77:	68 9a 99 99 99       	push   $0x9999999a
    1e7c:	ff 74 24 0c          	push   0xc(%esp)
    1e80:	ff 74 24 0c          	push   0xc(%esp)
    1e84:	e8 37 f2 ff ff       	call   10c0 <pow@plt>
    1e89:	dd 54 24 10          	fstl   0x10(%esp)
    1e8d:	dd 5c 24 04          	fstpl  0x4(%esp)
    1e91:	8d 83 60 d3 ff ff    	lea    -0x2ca0(%ebx),%eax
    1e97:	89 04 24             	mov    %eax,(%esp)
    1e9a:	e8 c1 f1 ff ff       	call   1060 <printf@plt>
    1e9f:	8d 83 99 d4 ff ff    	lea    -0x2b67(%ebx),%eax
    1ea5:	89 04 24             	mov    %eax,(%esp)
    1ea8:	e8 53 f2 ff ff       	call   1100 <puts@plt>
    1ead:	83 c4 10             	add    $0x10,%esp
    1eb0:	dd 83 a4 02 00 00    	fldl   0x2a4(%ebx)
    1eb6:	dd 04 24             	fldl   (%esp)
    1eb9:	df f1                	fcomip %st(1),%st
    1ebb:	dd d8                	fstp   %st(0)
    1ebd:	76 1d                	jbe    1edc <test_conv+0x353>
    1ebf:	f2 0f 10 04 24       	movsd  (%esp),%xmm0
    1ec4:	f2 0f 11 83 a4 02 00 	movsd  %xmm0,0x2a4(%ebx)
    1ecb:	00 
    1ecc:	6b f6 38             	imul   $0x38,%esi,%esi
    1ecf:	8b 84 33 3c 19 84 03 	mov    0x384193c(%ebx,%esi,1),%eax
    1ed6:	89 83 9c 02 00 00    	mov    %eax,0x29c(%ebx)
    1edc:	8b 44 24 3c          	mov    0x3c(%esp),%eax
    1ee0:	65 2b 05 14 00 00 00 	sub    %gs:0x14,%eax
    1ee7:	75 08                	jne    1ef1 <test_conv+0x368>
    1ee9:	83 c4 4c             	add    $0x4c,%esp
    1eec:	5b                   	pop    %ebx
    1eed:	5e                   	pop    %esi
    1eee:	5f                   	pop    %edi
    1eef:	5d                   	pop    %ebp
    1ef0:	c3                   	ret
    1ef1:	e8 ca 23 00 00       	call   42c0 <__stack_chk_fail_local>

00001ef6 <run_avpol_benchmark>:
    1ef6:	83 ec 10             	sub    $0x10,%esp
    1ef9:	e8 a7 0a 00 00       	call   29a5 <__x86.get_pc_thunk.ax>
    1efe:	05 f6 60 00 00       	add    $0x60f6,%eax
    1f03:	6b 54 24 14 38       	imul   $0x38,0x14(%esp),%edx
    1f08:	ff b0 b0 02 00 00    	push   0x2b0(%eax)
    1f0e:	ff b0 c0 02 00 00    	push   0x2c0(%eax)
    1f14:	ff 74 24 20          	push   0x20(%esp)
    1f18:	ff 94 10 30 03 84 03 	call   *0x3840330(%eax,%edx,1)
    1f1f:	83 c4 1c             	add    $0x1c,%esp
    1f22:	c3                   	ret

00001f23 <test_avpol>:
    1f23:	55                   	push   %ebp
    1f24:	57                   	push   %edi
    1f25:	56                   	push   %esi
    1f26:	53                   	push   %ebx
    1f27:	83 ec 3c             	sub    $0x3c,%esp
    1f2a:	e8 b1 f2 ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    1f2f:	81 c3 c5 60 00 00    	add    $0x60c5,%ebx
    1f35:	8b 74 24 50          	mov    0x50(%esp),%esi
    1f39:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    1f3f:	89 44 24 2c          	mov    %eax,0x2c(%esp)
    1f43:	31 c0                	xor    %eax,%eax
    1f45:	6b c6 38             	imul   $0x38,%esi,%eax
    1f48:	8b 84 03 5c 03 84 03 	mov    0x384035c(%ebx,%eax,1),%eax
    1f4f:	89 44 24 0c          	mov    %eax,0xc(%esp)
    1f53:	bf 00 00 00 00       	mov    $0x0,%edi
    1f58:	e9 b0 00 00 00       	jmp    200d <test_avpol+0xea>
    1f5d:	83 ec 04             	sub    $0x4,%esp
    1f60:	6a 60                	push   $0x60
    1f62:	6b f6 38             	imul   $0x38,%esi,%esi
    1f65:	ff b4 33 5c 03 84 03 	push   0x384035c(%ebx,%esi,1)
    1f6c:	8d 83 1c d1 ff ff    	lea    -0x2ee4(%ebx),%eax
    1f72:	50                   	push   %eax
    1f73:	e8 e8 f0 ff ff       	call   1060 <printf@plt>
    1f78:	83 c4 10             	add    $0x10,%esp
    1f7b:	e9 ec 02 00 00       	jmp    226c <test_avpol+0x349>
    1f80:	89 6c 24 10          	mov    %ebp,0x10(%esp)
    1f84:	89 2c 24             	mov    %ebp,(%esp)
    1f87:	db 04 24             	fildl  (%esp)
    1f8a:	d8 c8                	fmul   %st(0),%st
    1f8c:	dd 1c 24             	fstpl  (%esp)
    1f8f:	c7 44 24 14 03 00 00 	movl   $0x3,0x14(%esp)
    1f96:	00 
    1f97:	8d 44 24 14          	lea    0x14(%esp),%eax
    1f9b:	89 44 24 18          	mov    %eax,0x18(%esp)
    1f9f:	8d 15 2c 03 84 03    	lea    0x384032c,%edx
    1fa5:	6b c6 38             	imul   $0x38,%esi,%eax
    1fa8:	01 d8                	add    %ebx,%eax
    1faa:	89 54 24 08          	mov    %edx,0x8(%esp)
    1fae:	8b 44 02 04          	mov    0x4(%edx,%eax,1),%eax
    1fb2:	89 44 24 1c          	mov    %eax,0x1c(%esp)
    1fb6:	8d 44 24 10          	lea    0x10(%esp),%eax
    1fba:	89 44 24 20          	mov    %eax,0x20(%esp)
    1fbe:	8b 83 c0 02 00 00    	mov    0x2c0(%ebx),%eax
    1fc4:	89 44 24 24          	mov    %eax,0x24(%esp)
    1fc8:	8b 83 b0 02 00 00    	mov    0x2b0(%ebx),%eax
    1fce:	89 44 24 28          	mov    %eax,0x28(%esp)
    1fd2:	89 e8                	mov    %ebp,%eax
    1fd4:	e8 d1 f8 ff ff       	call   18aa <create>
    1fd9:	83 ec 08             	sub    $0x8,%esp
    1fdc:	8d 44 24 20          	lea    0x20(%esp),%eax
    1fe0:	50                   	push   %eax
    1fe1:	8d 83 3d 93 ff ff    	lea    -0x6cc3(%ebx),%eax
    1fe7:	50                   	push   %eax
    1fe8:	e8 d9 1d 00 00       	call   3dc6 <fcyc_v>
    1fed:	dc 74 24 10          	fdivl  0x10(%esp)
    1ff1:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
    1ff8:	29 f0                	sub    %esi,%eax
    1ffa:	01 f8                	add    %edi,%eax
    1ffc:	8d 04 c3             	lea    (%ebx,%eax,8),%eax
    1fff:	8b 4c 24 18          	mov    0x18(%esp),%ecx
    2003:	dd 5c 01 08          	fstpl  0x8(%ecx,%eax,1)
    2007:	83 c7 01             	add    $0x1,%edi
    200a:	83 c4 10             	add    $0x10,%esp
    200d:	83 ff 04             	cmp    $0x4,%edi
    2010:	7f 76                	jg     2088 <test_avpol+0x165>
    2012:	b8 60 00 00 00       	mov    $0x60,%eax
    2017:	e8 8e f8 ff ff       	call   18aa <create>
    201c:	83 ec 08             	sub    $0x8,%esp
    201f:	6a 60                	push   $0x60
    2021:	56                   	push   %esi
    2022:	e8 cf fe ff ff       	call   1ef6 <run_avpol_benchmark>
    2027:	b8 60 00 00 00       	mov    $0x60,%eax
    202c:	e8 45 f6 ff ff       	call   1676 <check_avpol>
    2031:	83 c4 10             	add    $0x10,%esp
    2034:	85 c0                	test   %eax,%eax
    2036:	0f 85 21 ff ff ff    	jne    1f5d <test_avpol+0x3a>
    203c:	8b ac bb 74 d5 ff ff 	mov    -0x2a8c(%ebx,%edi,4),%ebp
    2043:	89 e8                	mov    %ebp,%eax
    2045:	e8 60 f8 ff ff       	call   18aa <create>
    204a:	83 ec 08             	sub    $0x8,%esp
    204d:	55                   	push   %ebp
    204e:	56                   	push   %esi
    204f:	e8 a2 fe ff ff       	call   1ef6 <run_avpol_benchmark>
    2054:	89 e8                	mov    %ebp,%eax
    2056:	e8 1b f6 ff ff       	call   1676 <check_avpol>
    205b:	83 c4 10             	add    $0x10,%esp
    205e:	85 c0                	test   %eax,%eax
    2060:	0f 84 1a ff ff ff    	je     1f80 <test_avpol+0x5d>
    2066:	83 ec 04             	sub    $0x4,%esp
    2069:	55                   	push   %ebp
    206a:	6b f6 38             	imul   $0x38,%esi,%esi
    206d:	ff b4 33 5c 03 84 03 	push   0x384035c(%ebx,%esi,1)
    2074:	8d 83 1c d1 ff ff    	lea    -0x2ee4(%ebx),%eax
    207a:	50                   	push   %eax
    207b:	e8 e0 ef ff ff       	call   1060 <printf@plt>
    2080:	83 c4 10             	add    $0x10,%esp
    2083:	e9 e4 01 00 00       	jmp    226c <test_avpol+0x349>
    2088:	83 ec 08             	sub    $0x8,%esp
    208b:	ff 74 24 14          	push   0x14(%esp)
    208f:	8d 83 7d d3 ff ff    	lea    -0x2c83(%ebx),%eax
    2095:	50                   	push   %eax
    2096:	e8 c5 ef ff ff       	call   1060 <printf@plt>
    209b:	8d 83 47 d3 ff ff    	lea    -0x2cb9(%ebx),%eax
    20a1:	89 04 24             	mov    %eax,(%esp)
    20a4:	e8 b7 ef ff ff       	call   1060 <printf@plt>
    20a9:	83 c4 10             	add    $0x10,%esp
    20ac:	bf 00 00 00 00       	mov    $0x0,%edi
    20b1:	eb 1c                	jmp    20cf <test_avpol+0x1ac>
    20b3:	83 ec 08             	sub    $0x8,%esp
    20b6:	ff b4 bb 74 d5 ff ff 	push   -0x2a8c(%ebx,%edi,4)
    20bd:	8d 83 4c d3 ff ff    	lea    -0x2cb4(%ebx),%eax
    20c3:	50                   	push   %eax
    20c4:	e8 97 ef ff ff       	call   1060 <printf@plt>
    20c9:	83 c7 01             	add    $0x1,%edi
    20cc:	83 c4 10             	add    $0x10,%esp
    20cf:	83 ff 04             	cmp    $0x4,%edi
    20d2:	7e df                	jle    20b3 <test_avpol+0x190>
    20d4:	83 ec 0c             	sub    $0xc,%esp
    20d7:	8d 83 50 d3 ff ff    	lea    -0x2cb0(%ebx),%eax
    20dd:	50                   	push   %eax
    20de:	e8 1d f0 ff ff       	call   1100 <puts@plt>
    20e3:	8d 83 56 d3 ff ff    	lea    -0x2caa(%ebx),%eax
    20e9:	89 04 24             	mov    %eax,(%esp)
    20ec:	e8 6f ef ff ff       	call   1060 <printf@plt>
    20f1:	83 c4 10             	add    $0x10,%esp
    20f4:	bf 00 00 00 00       	mov    $0x0,%edi
    20f9:	eb 2e                	jmp    2129 <test_avpol+0x206>
    20fb:	83 ec 04             	sub    $0x4,%esp
    20fe:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
    2105:	29 f0                	sub    %esi,%eax
    2107:	01 f8                	add    %edi,%eax
    2109:	ff b4 c3 38 03 84 03 	push   0x3840338(%ebx,%eax,8)
    2110:	ff b4 c3 34 03 84 03 	push   0x3840334(%ebx,%eax,8)
    2117:	8d 83 60 d3 ff ff    	lea    -0x2ca0(%ebx),%eax
    211d:	50                   	push   %eax
    211e:	e8 3d ef ff ff       	call   1060 <printf@plt>
    2123:	83 c7 01             	add    $0x1,%edi
    2126:	83 c4 10             	add    $0x10,%esp
    2129:	83 ff 04             	cmp    $0x4,%edi
    212c:	7e cd                	jle    20fb <test_avpol+0x1d8>
    212e:	83 ec 0c             	sub    $0xc,%esp
    2131:	6a 0a                	push   $0xa
    2133:	e8 38 f0 ff ff       	call   1170 <putchar@plt>
    2138:	8d 83 66 d3 ff ff    	lea    -0x2c9a(%ebx),%eax
    213e:	89 04 24             	mov    %eax,(%esp)
    2141:	e8 1a ef ff ff       	call   1060 <printf@plt>
    2146:	83 c4 10             	add    $0x10,%esp
    2149:	bf 00 00 00 00       	mov    $0x0,%edi
    214e:	eb 23                	jmp    2173 <test_avpol+0x250>
    2150:	83 ec 04             	sub    $0x4,%esp
    2153:	ff b4 fb 10 d5 ff ff 	push   -0x2af0(%ebx,%edi,8)
    215a:	ff b4 fb 0c d5 ff ff 	push   -0x2af4(%ebx,%edi,8)
    2161:	8d 83 60 d3 ff ff    	lea    -0x2ca0(%ebx),%eax
    2167:	50                   	push   %eax
    2168:	e8 f3 ee ff ff       	call   1060 <printf@plt>
    216d:	83 c7 01             	add    $0x1,%edi
    2170:	83 c4 10             	add    $0x10,%esp
    2173:	83 ff 04             	cmp    $0x4,%edi
    2176:	7e d8                	jle    2150 <test_avpol+0x22d>
    2178:	83 ec 0c             	sub    $0xc,%esp
    217b:	6a 0a                	push   $0xa
    217d:	e8 ee ef ff ff       	call   1170 <putchar@plt>
    2182:	8d 83 74 d3 ff ff    	lea    -0x2c8c(%ebx),%eax
    2188:	89 04 24             	mov    %eax,(%esp)
    218b:	e8 d0 ee ff ff       	call   1060 <printf@plt>
    2190:	83 c4 10             	add    $0x10,%esp
    2193:	d9 e8                	fld1
    2195:	dd 1c 24             	fstpl  (%esp)
    2198:	bf 00 00 00 00       	mov    $0x0,%edi
    219d:	83 ff 04             	cmp    $0x4,%edi
    21a0:	7f 60                	jg     2202 <test_avpol+0x2df>
    21a2:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
    21a9:	29 f0                	sub    %esi,%eax
    21ab:	01 f8                	add    %edi,%eax
    21ad:	d9 ee                	fldz
    21af:	dd 84 c3 34 03 84 03 	fldl   0x3840334(%ebx,%eax,8)
    21b6:	db f1                	fcomi  %st(1),%st
    21b8:	dd d9                	fstp   %st(1)
    21ba:	76 29                	jbe    21e5 <test_avpol+0x2c2>
    21bc:	dc bc fb 0c d5 ff ff 	fdivrl -0x2af4(%ebx,%edi,8)
    21c3:	dd 04 24             	fldl   (%esp)
    21c6:	d8 c9                	fmul   %st(1),%st
    21c8:	dd 1c 24             	fstpl  (%esp)
    21cb:	83 ec 0c             	sub    $0xc,%esp
    21ce:	dd 1c 24             	fstpl  (%esp)
    21d1:	8d 83 60 d3 ff ff    	lea    -0x2ca0(%ebx),%eax
    21d7:	50                   	push   %eax
    21d8:	e8 83 ee ff ff       	call   1060 <printf@plt>
    21dd:	83 c7 01             	add    $0x1,%edi
    21e0:	83 c4 10             	add    $0x10,%esp
    21e3:	eb b8                	jmp    219d <test_avpol+0x27a>
    21e5:	dd d8                	fstp   %st(0)
    21e7:	83 ec 0c             	sub    $0xc,%esp
    21ea:	8d 83 58 d1 ff ff    	lea    -0x2ea8(%ebx),%eax
    21f0:	50                   	push   %eax
    21f1:	e8 0a ef ff ff       	call   1100 <puts@plt>
    21f6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    21fd:	e8 1e ef ff ff       	call   1120 <exit@plt>
    2202:	68 99 99 c9 3f       	push   $0x3fc99999
    2207:	68 9a 99 99 99       	push   $0x9999999a
    220c:	ff 74 24 0c          	push   0xc(%esp)
    2210:	ff 74 24 0c          	push   0xc(%esp)
    2214:	e8 a7 ee ff ff       	call   10c0 <pow@plt>
    2219:	dd 54 24 10          	fstl   0x10(%esp)
    221d:	dd 5c 24 04          	fstpl  0x4(%esp)
    2221:	8d 83 60 d3 ff ff    	lea    -0x2ca0(%ebx),%eax
    2227:	89 04 24             	mov    %eax,(%esp)
    222a:	e8 31 ee ff ff       	call   1060 <printf@plt>
    222f:	8d 83 99 d4 ff ff    	lea    -0x2b67(%ebx),%eax
    2235:	89 04 24             	mov    %eax,(%esp)
    2238:	e8 c3 ee ff ff       	call   1100 <puts@plt>
    223d:	83 c4 10             	add    $0x10,%esp
    2240:	dd 83 94 02 00 00    	fldl   0x294(%ebx)
    2246:	dd 04 24             	fldl   (%esp)
    2249:	df f1                	fcomip %st(1),%st
    224b:	dd d8                	fstp   %st(0)
    224d:	76 1d                	jbe    226c <test_avpol+0x349>
    224f:	f2 0f 10 04 24       	movsd  (%esp),%xmm0
    2254:	f2 0f 11 83 94 02 00 	movsd  %xmm0,0x294(%ebx)
    225b:	00 
    225c:	6b f6 38             	imul   $0x38,%esi,%esi
    225f:	8b 84 33 5c 03 84 03 	mov    0x384035c(%ebx,%esi,1),%eax
    2266:	89 83 8c 02 00 00    	mov    %eax,0x28c(%ebx)
    226c:	8b 44 24 2c          	mov    0x2c(%esp),%eax
    2270:	65 2b 05 14 00 00 00 	sub    %gs:0x14,%eax
    2277:	75 08                	jne    2281 <test_avpol+0x35e>
    2279:	83 c4 3c             	add    $0x3c,%esp
    227c:	5b                   	pop    %ebx
    227d:	5e                   	pop    %esi
    227e:	5f                   	pop    %edi
    227f:	5d                   	pop    %ebp
    2280:	c3                   	ret
    2281:	e8 3a 20 00 00       	call   42c0 <__stack_chk_fail_local>

00002286 <usage>:
    2286:	56                   	push   %esi
    2287:	53                   	push   %ebx
    2288:	83 ec 08             	sub    $0x8,%esp
    228b:	e8 50 ef ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    2290:	81 c3 64 5d 00 00    	add    $0x5d64,%ebx
    2296:	ff 74 24 14          	push   0x14(%esp)
    229a:	8d 83 80 d1 ff ff    	lea    -0x2e80(%ebx),%eax
    22a0:	50                   	push   %eax
    22a1:	8b b3 e4 ff ff ff    	mov    -0x1c(%ebx),%esi
    22a7:	ff 36                	push   (%esi)
    22a9:	e8 92 ee ff ff       	call   1140 <fprintf@plt>
    22ae:	ff 36                	push   (%esi)
    22b0:	6a 09                	push   $0x9
    22b2:	6a 01                	push   $0x1
    22b4:	8d 83 93 d3 ff ff    	lea    -0x2c6d(%ebx),%eax
    22ba:	50                   	push   %eax
    22bb:	e8 20 ee ff ff       	call   10e0 <fwrite@plt>
    22c0:	83 c4 20             	add    $0x20,%esp
    22c3:	ff 36                	push   (%esi)
    22c5:	6a 20                	push   $0x20
    22c7:	6a 01                	push   $0x1
    22c9:	8d 83 b4 d1 ff ff    	lea    -0x2e4c(%ebx),%eax
    22cf:	50                   	push   %eax
    22d0:	e8 0b ee ff ff       	call   10e0 <fwrite@plt>
    22d5:	ff 36                	push   (%esi)
    22d7:	6a 2f                	push   $0x2f
    22d9:	6a 01                	push   $0x1
    22db:	8d 83 d8 d1 ff ff    	lea    -0x2e28(%ebx),%eax
    22e1:	50                   	push   %eax
    22e2:	e8 f9 ed ff ff       	call   10e0 <fwrite@plt>
    22e7:	83 c4 20             	add    $0x20,%esp
    22ea:	ff 36                	push   (%esi)
    22ec:	6a 48                	push   $0x48
    22ee:	6a 01                	push   $0x1
    22f0:	8d 83 08 d2 ff ff    	lea    -0x2df8(%ebx),%eax
    22f6:	50                   	push   %eax
    22f7:	e8 e4 ed ff ff       	call   10e0 <fwrite@plt>
    22fc:	ff 36                	push   (%esi)
    22fe:	6a 3b                	push   $0x3b
    2300:	6a 01                	push   $0x1
    2302:	8d 83 54 d2 ff ff    	lea    -0x2dac(%ebx),%eax
    2308:	50                   	push   %eax
    2309:	e8 d2 ed ff ff       	call   10e0 <fwrite@plt>
    230e:	83 c4 20             	add    $0x20,%esp
    2311:	ff 36                	push   (%esi)
    2313:	6a 3b                	push   $0x3b
    2315:	6a 01                	push   $0x1
    2317:	8d 83 90 d2 ff ff    	lea    -0x2d70(%ebx),%eax
    231d:	50                   	push   %eax
    231e:	e8 bd ed ff ff       	call   10e0 <fwrite@plt>
    2323:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    232a:	e8 f1 ed ff ff       	call   1120 <exit@plt>

0000232f <main>:
    232f:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    2333:	83 e4 f0             	and    $0xfffffff0,%esp
    2336:	ff 71 fc             	push   -0x4(%ecx)
    2339:	55                   	push   %ebp
    233a:	89 e5                	mov    %esp,%ebp
    233c:	57                   	push   %edi
    233d:	56                   	push   %esi
    233e:	53                   	push   %ebx
    233f:	51                   	push   %ecx
    2340:	81 ec 38 01 00 00    	sub    $0x138,%esp
    2346:	e8 95 ee ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    234b:	81 c3 a9 5c 00 00    	add    $0x5ca9,%ebx
    2351:	8b 01                	mov    (%ecx),%eax
    2353:	89 85 d0 fe ff ff    	mov    %eax,-0x130(%ebp)
    2359:	8b 41 04             	mov    0x4(%ecx),%eax
    235c:	89 85 d4 fe ff ff    	mov    %eax,-0x12c(%ebp)
    2362:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    2368:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    236b:	31 c0                	xor    %eax,%eax
    236d:	e8 7f 16 00 00       	call   39f1 <register_conv_functions>
    2372:	e8 a0 17 00 00       	call   3b17 <register_average_pooling_functions>
    2377:	c7 85 c4 fe ff ff 00 	movl   $0x0,-0x13c(%ebp)
    237e:	00 00 00 
    2381:	c7 85 c8 fe ff ff c1 	movl   $0x6c1,-0x138(%ebp)
    2388:	06 00 00 
    238b:	c7 85 c0 fe ff ff 00 	movl   $0x0,-0x140(%ebp)
    2392:	00 00 00 
    2395:	c7 85 bc fe ff ff 00 	movl   $0x0,-0x144(%ebp)
    239c:	00 00 00 
    239f:	c7 85 cc fe ff ff 00 	movl   $0x0,-0x134(%ebp)
    23a6:	00 00 00 
    23a9:	eb 1d                	jmp    23c8 <.L156+0x1d>

000023ab <.L156>:
    23ab:	83 ec 04             	sub    $0x4,%esp
    23ae:	6a 0a                	push   $0xa
    23b0:	6a 00                	push   $0x0
    23b2:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
    23b8:	ff 30                	push   (%eax)
    23ba:	e8 d1 ed ff ff       	call   1190 <strtol@plt>
    23bf:	89 85 c8 fe ff ff    	mov    %eax,-0x138(%ebp)
    23c5:	83 c4 10             	add    $0x10,%esp
    23c8:	83 ec 04             	sub    $0x4,%esp
    23cb:	8d 83 b9 d3 ff ff    	lea    -0x2c47(%ebx),%eax
    23d1:	50                   	push   %eax
    23d2:	ff b5 d4 fe ff ff    	push   -0x12c(%ebp)
    23d8:	ff b5 d0 fe ff ff    	push   -0x130(%ebp)
    23de:	e8 6d ed ff ff       	call   1150 <getopt@plt>
    23e3:	83 c4 10             	add    $0x10,%esp
    23e6:	3c ff                	cmp    $0xff,%al
    23e8:	0f 84 34 01 00 00    	je     2522 <.L198+0xf>
    23ee:	83 e8 64             	sub    $0x64,%eax
    23f1:	3c 10                	cmp    $0x10,%al
    23f3:	0f 87 fb 00 00 00    	ja     24f4 <.L153>
    23f9:	0f b6 c0             	movzbl %al,%eax
    23fc:	89 da                	mov    %ebx,%edx
    23fe:	03 94 83 ac d4 ff ff 	add    -0x2b54(%ebx,%eax,4),%edx
    2405:	ff e2                	jmp    *%edx

00002407 <.L157>:
    2407:	c7 85 cc fe ff ff 01 	movl   $0x1,-0x134(%ebp)
    240e:	00 00 00 
    2411:	eb b5                	jmp    23c8 <.L156+0x1d>

00002413 <.L160>:
    2413:	83 ec 0c             	sub    $0xc,%esp
    2416:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
    241c:	ff 30                	push   (%eax)
    241e:	e8 6d ec ff ff       	call   1090 <strdup@plt>
    2423:	89 85 c4 fe ff ff    	mov    %eax,-0x13c(%ebp)
    2429:	83 c4 10             	add    $0x10,%esp
    242c:	eb 9a                	jmp    23c8 <.L156+0x1d>

0000242e <.L161>:
    242e:	83 ec 0c             	sub    $0xc,%esp
    2431:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
    2437:	ff 30                	push   (%eax)
    2439:	e8 52 ec ff ff       	call   1090 <strdup@plt>
    243e:	89 c6                	mov    %eax,%esi
    2440:	83 c4 08             	add    $0x8,%esp
    2443:	8d 83 9d d3 ff ff    	lea    -0x2c63(%ebx),%eax
    2449:	50                   	push   %eax
    244a:	56                   	push   %esi
    244b:	e8 10 ed ff ff       	call   1160 <fopen@plt>
    2450:	89 c7                	mov    %eax,%edi
    2452:	83 c4 10             	add    $0x10,%esp
    2455:	85 c0                	test   %eax,%eax
    2457:	74 07                	je     2460 <.L161+0x32>
    2459:	be 00 00 00 00       	mov    $0x0,%esi
    245e:	eb 3c                	jmp    249c <.L161+0x6e>
    2460:	83 ec 08             	sub    $0x8,%esp
    2463:	56                   	push   %esi
    2464:	8d 83 9f d3 ff ff    	lea    -0x2c61(%ebx),%eax
    246a:	50                   	push   %eax
    246b:	e8 f0 eb ff ff       	call   1060 <printf@plt>
    2470:	c7 04 24 fb ff ff ff 	movl   $0xfffffffb,(%esp)
    2477:	e8 a4 ec ff ff       	call   1120 <exit@plt>
    247c:	83 ec 04             	sub    $0x4,%esp
    247f:	6b c6 38             	imul   $0x38,%esi,%eax
    2482:	ff b4 03 3c 19 84 03 	push   0x384193c(%ebx,%eax,1)
    2489:	8d 83 b3 d3 ff ff    	lea    -0x2c4d(%ebx),%eax
    248f:	50                   	push   %eax
    2490:	57                   	push   %edi
    2491:	e8 aa ec ff ff       	call   1140 <fprintf@plt>
    2496:	83 c6 01             	add    $0x1,%esi
    2499:	83 c4 10             	add    $0x10,%esp
    249c:	39 b3 10 03 84 03    	cmp    %esi,0x3840310(%ebx)
    24a2:	7f d8                	jg     247c <.L161+0x4e>
    24a4:	be 00 00 00 00       	mov    $0x0,%esi
    24a9:	eb 20                	jmp    24cb <.L161+0x9d>
    24ab:	83 ec 04             	sub    $0x4,%esp
    24ae:	6b c6 38             	imul   $0x38,%esi,%eax
    24b1:	ff b4 03 5c 03 84 03 	push   0x384035c(%ebx,%eax,1)
    24b8:	8d 83 b3 d3 ff ff    	lea    -0x2c4d(%ebx),%eax
    24be:	50                   	push   %eax
    24bf:	57                   	push   %edi
    24c0:	e8 7b ec ff ff       	call   1140 <fprintf@plt>
    24c5:	83 c6 01             	add    $0x1,%esi
    24c8:	83 c4 10             	add    $0x10,%esp
    24cb:	39 b3 0c 03 84 03    	cmp    %esi,0x384030c(%ebx)
    24d1:	7f d8                	jg     24ab <.L161+0x7d>
    24d3:	83 ec 0c             	sub    $0xc,%esp
    24d6:	57                   	push   %edi
    24d7:	e8 d4 eb ff ff       	call   10b0 <fclose@plt>
    24dc:	83 c4 10             	add    $0x10,%esp
    24df:	e9 e4 fe ff ff       	jmp    23c8 <.L156+0x1d>

000024e4 <.L158>:
    24e4:	83 ec 0c             	sub    $0xc,%esp
    24e7:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
    24ed:	ff 30                	push   (%eax)
    24ef:	e8 92 fd ff ff       	call   2286 <usage>

000024f4 <.L153>:
    24f4:	83 ec 0c             	sub    $0xc,%esp
    24f7:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
    24fd:	ff 30                	push   (%eax)
    24ff:	e8 82 fd ff ff       	call   2286 <usage>

00002504 <.L154>:
    2504:	c7 85 bc fe ff ff 01 	movl   $0x1,-0x144(%ebp)
    250b:	00 00 00 
    250e:	e9 b5 fe ff ff       	jmp    23c8 <.L156+0x1d>

00002513 <.L198>:
    2513:	c7 85 c0 fe ff ff 01 	movl   $0x1,-0x140(%ebp)
    251a:	00 00 00 
    251d:	e9 a6 fe ff ff       	jmp    23c8 <.L156+0x1d>
    2522:	83 bd cc fe ff ff 00 	cmpl   $0x0,-0x134(%ebp)
    2529:	0f 85 a8 01 00 00    	jne    26d7 <.L198+0x1c4>
    252f:	83 bd bc fe ff ff 00 	cmpl   $0x0,-0x144(%ebp)
    2536:	0f 85 f4 00 00 00    	jne    2630 <.L198+0x11d>
    253c:	83 ec 08             	sub    $0x8,%esp
    253f:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
    2545:	ff 70 04             	push   0x4(%eax)
    2548:	8d 83 c4 d3 ff ff    	lea    -0x2c3c(%ebx),%eax
    254e:	50                   	push   %eax
    254f:	e8 ec ea ff ff       	call   1040 <strcmp@plt>
    2554:	83 c4 10             	add    $0x10,%esp
    2557:	85 c0                	test   %eax,%eax
    2559:	0f 84 82 01 00 00    	je     26e1 <.L198+0x1ce>
    255f:	83 ec 08             	sub    $0x8,%esp
    2562:	8d b3 38 02 00 00    	lea    0x238(%ebx),%esi
    2568:	ff 36                	push   (%esi)
    256a:	8d 83 cc d3 ff ff    	lea    -0x2c34(%ebx),%eax
    2570:	50                   	push   %eax
    2571:	e8 ea ea ff ff       	call   1060 <printf@plt>
    2576:	83 c4 08             	add    $0x8,%esp
    2579:	ff 76 04             	push   0x4(%esi)
    257c:	8d 83 db d3 ff ff    	lea    -0x2c25(%ebx),%eax
    2582:	50                   	push   %eax
    2583:	e8 d8 ea ff ff       	call   1060 <printf@plt>
    2588:	83 c4 08             	add    $0x8,%esp
    258b:	ff 76 08             	push   0x8(%esi)
    258e:	8d 83 e4 d3 ff ff    	lea    -0x2c1c(%ebx),%eax
    2594:	50                   	push   %eax
    2595:	e8 c6 ea ff ff       	call   1060 <printf@plt>
    259a:	8b 46 10             	mov    0x10(%esi),%eax
    259d:	83 c4 10             	add    $0x10,%esp
    25a0:	80 38 00             	cmpb   $0x0,(%eax)
    25a3:	75 0e                	jne    25b3 <.L198+0xa0>
    25a5:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
    25ab:	8b 40 0c             	mov    0xc(%eax),%eax
    25ae:	80 38 00             	cmpb   $0x0,(%eax)
    25b1:	74 70                	je     2623 <.L198+0x110>
    25b3:	83 ec 08             	sub    $0x8,%esp
    25b6:	8d b3 38 02 00 00    	lea    0x238(%ebx),%esi
    25bc:	ff 76 0c             	push   0xc(%esi)
    25bf:	8d 83 ef d3 ff ff    	lea    -0x2c11(%ebx),%eax
    25c5:	50                   	push   %eax
    25c6:	e8 95 ea ff ff       	call   1060 <printf@plt>
    25cb:	83 c4 08             	add    $0x8,%esp
    25ce:	ff 76 10             	push   0x10(%esi)
    25d1:	8d 83 f8 d3 ff ff    	lea    -0x2c08(%ebx),%eax
    25d7:	50                   	push   %eax
    25d8:	e8 83 ea ff ff       	call   1060 <printf@plt>
    25dd:	8b 46 18             	mov    0x18(%esi),%eax
    25e0:	83 c4 10             	add    $0x10,%esp
    25e3:	80 38 00             	cmpb   $0x0,(%eax)
    25e6:	75 0e                	jne    25f6 <.L198+0xe3>
    25e8:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
    25ee:	8b 40 14             	mov    0x14(%eax),%eax
    25f1:	80 38 00             	cmpb   $0x0,(%eax)
    25f4:	74 2d                	je     2623 <.L198+0x110>
    25f6:	83 ec 08             	sub    $0x8,%esp
    25f9:	8d b3 38 02 00 00    	lea    0x238(%ebx),%esi
    25ff:	ff 76 14             	push   0x14(%esi)
    2602:	8d 83 03 d4 ff ff    	lea    -0x2bfd(%ebx),%eax
    2608:	50                   	push   %eax
    2609:	e8 52 ea ff ff       	call   1060 <printf@plt>
    260e:	83 c4 08             	add    $0x8,%esp
    2611:	ff 76 18             	push   0x18(%esi)
    2614:	8d 83 0c d4 ff ff    	lea    -0x2bf4(%ebx),%eax
    261a:	50                   	push   %eax
    261b:	e8 40 ea ff ff       	call   1060 <printf@plt>
    2620:	83 c4 10             	add    $0x10,%esp
    2623:	83 ec 0c             	sub    $0xc,%esp
    2626:	6a 0a                	push   $0xa
    2628:	e8 43 eb ff ff       	call   1170 <putchar@plt>
    262d:	83 c4 10             	add    $0x10,%esp
    2630:	83 ec 0c             	sub    $0xc,%esp
    2633:	ff b5 c8 fe ff ff    	push   -0x138(%ebp)
    2639:	e8 f2 ea ff ff       	call   1130 <srand@plt>
    263e:	83 c4 10             	add    $0x10,%esp
    2641:	83 bd c0 fe ff ff 00 	cmpl   $0x0,-0x140(%ebp)
    2648:	0f 84 b6 00 00 00    	je     2704 <.L198+0x1f1>
    264e:	c7 83 10 03 84 03 01 	movl   $0x1,0x3840310(%ebx)
    2655:	00 00 00 
    2658:	c7 83 0c 03 84 03 01 	movl   $0x1,0x384030c(%ebx)
    265f:	00 00 00 
    2662:	8d 83 e4 b9 ff ff    	lea    -0x461c(%ebx),%eax
    2668:	89 83 10 19 84 03    	mov    %eax,0x3841910(%ebx)
    266e:	8d 83 17 d4 ff ff    	lea    -0x2be9(%ebx),%eax
    2674:	89 83 3c 19 84 03    	mov    %eax,0x384193c(%ebx)
    267a:	66 c7 83 40 19 84 03 	movw   $0x1,0x3841940(%ebx)
    2681:	01 00 
    2683:	8d 83 cf b9 ff ff    	lea    -0x4631(%ebx),%eax
    2689:	89 83 30 03 84 03    	mov    %eax,0x3840330(%ebx)
    268f:	8d 83 2e d4 ff ff    	lea    -0x2bd2(%ebx),%eax
    2695:	89 83 5c 03 84 03    	mov    %eax,0x384035c(%ebx)
    269b:	66 c7 83 60 03 84 03 	movw   $0x1,0x3840360(%ebx)
    26a2:	01 00 
    26a4:	83 ec 0c             	sub    $0xc,%esp
    26a7:	68 00 40 00 00       	push   $0x4000
    26ac:	e8 01 18 00 00       	call   3eb2 <set_fcyc_cache_size>
    26b1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26b8:	e8 e0 17 00 00       	call   3e9d <set_fcyc_clear_cache>
    26bd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26c4:	e8 44 18 00 00       	call   3f0d <set_fcyc_compensate>
    26c9:	83 c4 10             	add    $0x10,%esp
    26cc:	8b b5 cc fe ff ff    	mov    -0x134(%ebp),%esi
    26d2:	e9 d3 01 00 00       	jmp    28aa <.L198+0x397>
    26d7:	83 ec 0c             	sub    $0xc,%esp
    26da:	6a 00                	push   $0x0
    26dc:	e8 3f ea ff ff       	call   1120 <exit@plt>
    26e1:	83 ec 08             	sub    $0x8,%esp
    26e4:	8b 85 d4 fe ff ff    	mov    -0x12c(%ebp),%eax
    26ea:	ff 30                	push   (%eax)
    26ec:	8d 83 cc d2 ff ff    	lea    -0x2d34(%ebx),%eax
    26f2:	50                   	push   %eax
    26f3:	e8 68 e9 ff ff       	call   1060 <printf@plt>
    26f8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26ff:	e8 1c ea ff ff       	call   1120 <exit@plt>
    2704:	8b 8d c4 fe ff ff    	mov    -0x13c(%ebp),%ecx
    270a:	85 c9                	test   %ecx,%ecx
    270c:	0f 84 51 01 00 00    	je     2863 <.L198+0x350>
    2712:	83 ec 08             	sub    $0x8,%esp
    2715:	8d 83 49 d4 ff ff    	lea    -0x2bb7(%ebx),%eax
    271b:	50                   	push   %eax
    271c:	51                   	push   %ecx
    271d:	e8 3e ea ff ff       	call   1160 <fopen@plt>
    2722:	89 85 d0 fe ff ff    	mov    %eax,-0x130(%ebp)
    2728:	83 c4 10             	add    $0x10,%esp
    272b:	85 c0                	test   %eax,%eax
    272d:	0f 84 85 00 00 00    	je     27b8 <.L198+0x2a5>
    2733:	83 ec 04             	sub    $0x4,%esp
    2736:	ff b5 d0 fe ff ff    	push   -0x130(%ebp)
    273c:	68 00 01 00 00       	push   $0x100
    2741:	8d b5 e4 fe ff ff    	lea    -0x11c(%ebp),%esi
    2747:	56                   	push   %esi
    2748:	e8 53 e9 ff ff       	call   10a0 <fgets@plt>
    274d:	83 c4 10             	add    $0x10,%esp
    2750:	39 c6                	cmp    %eax,%esi
    2752:	0f 85 f5 00 00 00    	jne    284d <.L198+0x33a>
    2758:	8d 85 e4 fe ff ff    	lea    -0x11c(%ebp),%eax
    275e:	89 85 e0 fe ff ff    	mov    %eax,-0x120(%ebp)
    2764:	83 ec 08             	sub    $0x8,%esp
    2767:	8d 83 7e d4 ff ff    	lea    -0x2b82(%ebx),%eax
    276d:	50                   	push   %eax
    276e:	8d b5 e0 fe ff ff    	lea    -0x120(%ebp),%esi
    2774:	56                   	push   %esi
    2775:	e8 96 e9 ff ff       	call   1110 <strsep@plt>
    277a:	0f b6 00             	movzbl (%eax),%eax
    277d:	88 85 d4 fe ff ff    	mov    %al,-0x12c(%ebp)
    2783:	83 c4 08             	add    $0x8,%esp
    2786:	8d 83 99 d4 ff ff    	lea    -0x2b67(%ebx),%eax
    278c:	50                   	push   %eax
    278d:	56                   	push   %esi
    278e:	e8 7d e9 ff ff       	call   1110 <strsep@plt>
    2793:	89 c7                	mov    %eax,%edi
    2795:	89 85 e0 fe ff ff    	mov    %eax,-0x120(%ebp)
    279b:	83 c4 10             	add    $0x10,%esp
    279e:	80 bd d4 fe ff ff 43 	cmpb   $0x43,-0x12c(%ebp)
    27a5:	74 66                	je     280d <.L198+0x2fa>
    27a7:	80 bd d4 fe ff ff 4d 	cmpb   $0x4d,-0x12c(%ebp)
    27ae:	75 83                	jne    2733 <.L198+0x220>
    27b0:	8b b5 c0 fe ff ff    	mov    -0x140(%ebp),%esi
    27b6:	eb 60                	jmp    2818 <.L198+0x305>
    27b8:	83 ec 08             	sub    $0x8,%esp
    27bb:	ff b5 c4 fe ff ff    	push   -0x13c(%ebp)
    27c1:	8d 83 9f d3 ff ff    	lea    -0x2c61(%ebx),%eax
    27c7:	50                   	push   %eax
    27c8:	e8 93 e8 ff ff       	call   1060 <printf@plt>
    27cd:	c7 04 24 fb ff ff ff 	movl   $0xfffffffb,(%esp)
    27d4:	e8 47 e9 ff ff       	call   1120 <exit@plt>
    27d9:	83 c6 01             	add    $0x1,%esi
    27dc:	39 b3 10 03 84 03    	cmp    %esi,0x3840310(%ebx)
    27e2:	7e c3                	jle    27a7 <.L198+0x294>
    27e4:	6b c6 38             	imul   $0x38,%esi,%eax
    27e7:	83 ec 08             	sub    $0x8,%esp
    27ea:	57                   	push   %edi
    27eb:	ff b4 03 3c 19 84 03 	push   0x384193c(%ebx,%eax,1)
    27f2:	e8 49 e8 ff ff       	call   1040 <strcmp@plt>
    27f7:	83 c4 10             	add    $0x10,%esp
    27fa:	85 c0                	test   %eax,%eax
    27fc:	75 db                	jne    27d9 <.L198+0x2c6>
    27fe:	6b c6 38             	imul   $0x38,%esi,%eax
    2801:	66 c7 84 03 40 19 84 	movw   $0x1,0x3841940(%ebx,%eax,1)
    2808:	03 01 00 
    280b:	eb cc                	jmp    27d9 <.L198+0x2c6>
    280d:	8b b5 c0 fe ff ff    	mov    -0x140(%ebp),%esi
    2813:	eb c7                	jmp    27dc <.L198+0x2c9>
    2815:	83 c6 01             	add    $0x1,%esi
    2818:	39 b3 0c 03 84 03    	cmp    %esi,0x384030c(%ebx)
    281e:	0f 8e 0f ff ff ff    	jle    2733 <.L198+0x220>
    2824:	6b c6 38             	imul   $0x38,%esi,%eax
    2827:	83 ec 08             	sub    $0x8,%esp
    282a:	57                   	push   %edi
    282b:	ff b4 03 5c 03 84 03 	push   0x384035c(%ebx,%eax,1)
    2832:	e8 09 e8 ff ff       	call   1040 <strcmp@plt>
    2837:	83 c4 10             	add    $0x10,%esp
    283a:	85 c0                	test   %eax,%eax
    283c:	75 d7                	jne    2815 <.L198+0x302>
    283e:	6b c6 38             	imul   $0x38,%esi,%eax
    2841:	66 c7 84 03 60 03 84 	movw   $0x1,0x3840360(%ebx,%eax,1)
    2848:	03 01 00 
    284b:	eb c8                	jmp    2815 <.L198+0x302>
    284d:	83 ec 0c             	sub    $0xc,%esp
    2850:	ff b5 d0 fe ff ff    	push   -0x130(%ebp)
    2856:	e8 55 e8 ff ff       	call   10b0 <fclose@plt>
    285b:	83 c4 10             	add    $0x10,%esp
    285e:	e9 41 fe ff ff       	jmp    26a4 <.L198+0x191>
    2863:	8b 85 c0 fe ff ff    	mov    -0x140(%ebp),%eax
    2869:	39 83 10 03 84 03    	cmp    %eax,0x3840310(%ebx)
    286f:	7e 12                	jle    2883 <.L198+0x370>
    2871:	6b d0 38             	imul   $0x38,%eax,%edx
    2874:	66 c7 84 13 40 19 84 	movw   $0x1,0x3841940(%ebx,%edx,1)
    287b:	03 01 00 
    287e:	83 c0 01             	add    $0x1,%eax
    2881:	eb e6                	jmp    2869 <.L198+0x356>
    2883:	8b 85 c0 fe ff ff    	mov    -0x140(%ebp),%eax
    2889:	39 83 0c 03 84 03    	cmp    %eax,0x384030c(%ebx)
    288f:	0f 8e 0f fe ff ff    	jle    26a4 <.L198+0x191>
    2895:	6b d0 38             	imul   $0x38,%eax,%edx
    2898:	66 c7 84 13 60 03 84 	movw   $0x1,0x3840360(%ebx,%edx,1)
    289f:	03 01 00 
    28a2:	83 c0 01             	add    $0x1,%eax
    28a5:	eb e2                	jmp    2889 <.L198+0x376>
    28a7:	83 c6 01             	add    $0x1,%esi
    28aa:	39 b3 10 03 84 03    	cmp    %esi,0x3840310(%ebx)
    28b0:	7e 1c                	jle    28ce <.L198+0x3bb>
    28b2:	6b c6 38             	imul   $0x38,%esi,%eax
    28b5:	66 83 bc 03 40 19 84 	cmpw   $0x0,0x3841940(%ebx,%eax,1)
    28bc:	03 00 
    28be:	74 e7                	je     28a7 <.L198+0x394>
    28c0:	83 ec 0c             	sub    $0xc,%esp
    28c3:	56                   	push   %esi
    28c4:	e8 c0 f2 ff ff       	call   1b89 <test_conv>
    28c9:	83 c4 10             	add    $0x10,%esp
    28cc:	eb d9                	jmp    28a7 <.L198+0x394>
    28ce:	8b b5 cc fe ff ff    	mov    -0x134(%ebp),%esi
    28d4:	eb 03                	jmp    28d9 <.L198+0x3c6>
    28d6:	83 c6 01             	add    $0x1,%esi
    28d9:	39 b3 0c 03 84 03    	cmp    %esi,0x384030c(%ebx)
    28df:	7e 1c                	jle    28fd <.L198+0x3ea>
    28e1:	6b c6 38             	imul   $0x38,%esi,%eax
    28e4:	66 83 bc 03 60 03 84 	cmpw   $0x0,0x3840360(%ebx,%eax,1)
    28eb:	03 00 
    28ed:	74 e7                	je     28d6 <.L198+0x3c3>
    28ef:	83 ec 0c             	sub    $0xc,%esp
    28f2:	56                   	push   %esi
    28f3:	e8 2b f6 ff ff       	call   1f23 <test_avpol>
    28f8:	83 c4 10             	add    $0x10,%esp
    28fb:	eb d9                	jmp    28d6 <.L198+0x3c3>
    28fd:	83 bd c0 fe ff ff 00 	cmpl   $0x0,-0x140(%ebp)
    2904:	74 47                	je     294d <.L198+0x43a>
    2906:	83 ec 0c             	sub    $0xc,%esp
    2909:	ff b3 a8 02 00 00    	push   0x2a8(%ebx)
    290f:	ff b3 a4 02 00 00    	push   0x2a4(%ebx)
    2915:	ff b3 98 02 00 00    	push   0x298(%ebx)
    291b:	ff b3 94 02 00 00    	push   0x294(%ebx)
    2921:	8d 83 4b d4 ff ff    	lea    -0x2bb5(%ebx),%eax
    2927:	50                   	push   %eax
    2928:	e8 33 e7 ff ff       	call   1060 <printf@plt>
    292d:	83 c4 20             	add    $0x20,%esp
    2930:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    2933:	65 2b 05 14 00 00 00 	sub    %gs:0x14,%eax
    293a:	75 64                	jne    29a0 <.L198+0x48d>
    293c:	b8 00 00 00 00       	mov    $0x0,%eax
    2941:	8d 65 f0             	lea    -0x10(%ebp),%esp
    2944:	59                   	pop    %ecx
    2945:	5b                   	pop    %ebx
    2946:	5e                   	pop    %esi
    2947:	5f                   	pop    %edi
    2948:	5d                   	pop    %ebp
    2949:	8d 61 fc             	lea    -0x4(%ecx),%esp
    294c:	c3                   	ret
    294d:	83 ec 0c             	sub    $0xc,%esp
    2950:	8d 83 63 d4 ff ff    	lea    -0x2b9d(%ebx),%eax
    2956:	50                   	push   %eax
    2957:	e8 a4 e7 ff ff       	call   1100 <puts@plt>
    295c:	ff b3 8c 02 00 00    	push   0x28c(%ebx)
    2962:	ff b3 98 02 00 00    	push   0x298(%ebx)
    2968:	ff b3 94 02 00 00    	push   0x294(%ebx)
    296e:	8d 83 f8 d2 ff ff    	lea    -0x2d08(%ebx),%eax
    2974:	50                   	push   %eax
    2975:	e8 e6 e6 ff ff       	call   1060 <printf@plt>
    297a:	83 c4 20             	add    $0x20,%esp
    297d:	ff b3 9c 02 00 00    	push   0x29c(%ebx)
    2983:	ff b3 a8 02 00 00    	push   0x2a8(%ebx)
    2989:	ff b3 a4 02 00 00    	push   0x2a4(%ebx)
    298f:	8d 83 80 d4 ff ff    	lea    -0x2b80(%ebx),%eax
    2995:	50                   	push   %eax
    2996:	e8 c5 e6 ff ff       	call   1060 <printf@plt>
    299b:	83 c4 10             	add    $0x10,%esp
    299e:	eb 90                	jmp    2930 <.L198+0x41d>
    29a0:	e8 1b 19 00 00       	call   42c0 <__stack_chk_fail_local>

000029a5 <__x86.get_pc_thunk.ax>:
    29a5:	8b 04 24             	mov    (%esp),%eax
    29a8:	c3                   	ret

000029a9 <__x86.get_pc_thunk.si>:
    29a9:	8b 34 24             	mov    (%esp),%esi
    29ac:	c3                   	ret

000029ad <__x86.get_pc_thunk.di>:
    29ad:	8b 3c 24             	mov    (%esp),%edi
    29b0:	c3                   	ret

000029b1 <naive_conv>:
    29b1:	55                   	push   %ebp
    29b2:	57                   	push   %edi
    29b3:	56                   	push   %esi
    29b4:	53                   	push   %ebx
    29b5:	83 ec 10             	sub    $0x10,%esp
    29b8:	8b 4c 24 30          	mov    0x30(%esp),%ecx
    29bc:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
    29c3:	00 
    29c4:	e9 b6 00 00 00       	jmp    2a7f <naive_conv+0xce>
    29c9:	8b 44 24 08          	mov    0x8(%esp),%eax
    29cd:	8b 1c 24             	mov    (%esp),%ebx
    29d0:	01 d8                	add    %ebx,%eax
    29d2:	0f af 44 24 24       	imul   0x24(%esp),%eax
    29d7:	8b 5c 24 04          	mov    0x4(%esp),%ebx
    29db:	8d 14 33             	lea    (%ebx,%esi,1),%edx
    29de:	01 d0                	add    %edx,%eax
    29e0:	8d 04 40             	lea    (%eax,%eax,2),%eax
    29e3:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
    29e6:	03 4c 24 28          	add    0x28(%esp),%ecx
    29ea:	0f b7 19             	movzwl (%ecx),%ebx
    29ed:	8b 04 24             	mov    (%esp),%eax
    29f0:	8d 04 c6             	lea    (%esi,%eax,8),%eax
    29f3:	8d 04 40             	lea    (%eax,%eax,2),%eax
    29f6:	8d 14 00             	lea    (%eax,%eax,1),%edx
    29f9:	03 54 24 2c          	add    0x2c(%esp),%edx
    29fd:	0f b7 02             	movzwl (%edx),%eax
    2a00:	0f af d8             	imul   %eax,%ebx
    2a03:	03 1f                	add    (%edi),%ebx
    2a05:	89 1f                	mov    %ebx,(%edi)
    2a07:	0f b7 69 02          	movzwl 0x2(%ecx),%ebp
    2a0b:	0f b7 42 02          	movzwl 0x2(%edx),%eax
    2a0f:	0f af e8             	imul   %eax,%ebp
    2a12:	89 e8                	mov    %ebp,%eax
    2a14:	01 d8                	add    %ebx,%eax
    2a16:	89 07                	mov    %eax,(%edi)
    2a18:	0f b7 49 04          	movzwl 0x4(%ecx),%ecx
    2a1c:	0f b7 52 04          	movzwl 0x4(%edx),%edx
    2a20:	0f af ca             	imul   %edx,%ecx
    2a23:	01 c8                	add    %ecx,%eax
    2a25:	89 07                	mov    %eax,(%edi)
    2a27:	83 c6 01             	add    $0x1,%esi
    2a2a:	83 fe 07             	cmp    $0x7,%esi
    2a2d:	7e 9a                	jle    29c9 <naive_conv+0x18>
    2a2f:	8b 2c 24             	mov    (%esp),%ebp
    2a32:	83 c5 01             	add    $0x1,%ebp
    2a35:	83 fd 07             	cmp    $0x7,%ebp
    2a38:	7f 0a                	jg     2a44 <naive_conv+0x93>
    2a3a:	be 00 00 00 00       	mov    $0x0,%esi
    2a3f:	89 2c 24             	mov    %ebp,(%esp)
    2a42:	eb e6                	jmp    2a2a <naive_conv+0x79>
    2a44:	83 44 24 04 01       	addl   $0x1,0x4(%esp)
    2a49:	8b 74 24 04          	mov    0x4(%esp),%esi
    2a4d:	39 74 24 0c          	cmp    %esi,0xc(%esp)
    2a51:	7e 23                	jle    2a76 <naive_conv+0xc5>
    2a53:	8b 44 24 08          	mov    0x8(%esp),%eax
    2a57:	0f af 44 24 24       	imul   0x24(%esp),%eax
    2a5c:	8b 74 24 04          	mov    0x4(%esp),%esi
    2a60:	01 f0                	add    %esi,%eax
    2a62:	8b 7c 24 30          	mov    0x30(%esp),%edi
    2a66:	8d 3c 87             	lea    (%edi,%eax,4),%edi
    2a69:	c7 07 00 00 00 00    	movl   $0x0,(%edi)
    2a6f:	bd 00 00 00 00       	mov    $0x0,%ebp
    2a74:	eb bf                	jmp    2a35 <naive_conv+0x84>
    2a76:	8b 4c 24 30          	mov    0x30(%esp),%ecx
    2a7a:	83 44 24 08 01       	addl   $0x1,0x8(%esp)
    2a7f:	8b 44 24 24          	mov    0x24(%esp),%eax
    2a83:	8d 50 f9             	lea    -0x7(%eax),%edx
    2a86:	8b 44 24 08          	mov    0x8(%esp),%eax
    2a8a:	39 c2                	cmp    %eax,%edx
    2a8c:	7e 12                	jle    2aa0 <naive_conv+0xef>
    2a8e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2a95:	00 
    2a96:	89 54 24 0c          	mov    %edx,0xc(%esp)
    2a9a:	89 4c 24 30          	mov    %ecx,0x30(%esp)
    2a9e:	eb a9                	jmp    2a49 <naive_conv+0x98>
    2aa0:	83 c4 10             	add    $0x10,%esp
    2aa3:	5b                   	pop    %ebx
    2aa4:	5e                   	pop    %esi
    2aa5:	5f                   	pop    %edi
    2aa6:	5d                   	pop    %ebp
    2aa7:	c3                   	ret

00002aa8 <naive2_conv>:
    2aa8:	55                   	push   %ebp
    2aa9:	57                   	push   %edi
    2aaa:	56                   	push   %esi
    2aab:	53                   	push   %ebx
    2aac:	83 ec 10             	sub    $0x10,%esp
    2aaf:	8b 4c 24 30          	mov    0x30(%esp),%ecx
    2ab3:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
    2aba:	00 
    2abb:	e9 ac 00 00 00       	jmp    2b6c <naive2_conv+0xc4>
    2ac0:	8b 44 24 08          	mov    0x8(%esp),%eax
    2ac4:	01 f8                	add    %edi,%eax
    2ac6:	0f af 44 24 24       	imul   0x24(%esp),%eax
    2acb:	8b 74 24 04          	mov    0x4(%esp),%esi
    2acf:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
    2ad2:	01 d0                	add    %edx,%eax
    2ad4:	8d 04 40             	lea    (%eax,%eax,2),%eax
    2ad7:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
    2ada:	03 4c 24 28          	add    0x28(%esp),%ecx
    2ade:	0f b7 31             	movzwl (%ecx),%esi
    2ae1:	8d 04 fb             	lea    (%ebx,%edi,8),%eax
    2ae4:	8d 04 40             	lea    (%eax,%eax,2),%eax
    2ae7:	8d 14 00             	lea    (%eax,%eax,1),%edx
    2aea:	03 54 24 2c          	add    0x2c(%esp),%edx
    2aee:	0f b7 02             	movzwl (%edx),%eax
    2af1:	0f af f0             	imul   %eax,%esi
    2af4:	0f b7 41 02          	movzwl 0x2(%ecx),%eax
    2af8:	0f b7 6a 02          	movzwl 0x2(%edx),%ebp
    2afc:	0f af c5             	imul   %ebp,%eax
    2aff:	01 f0                	add    %esi,%eax
    2b01:	0f b7 49 04          	movzwl 0x4(%ecx),%ecx
    2b05:	0f b7 52 04          	movzwl 0x4(%edx),%edx
    2b09:	0f af ca             	imul   %edx,%ecx
    2b0c:	01 c8                	add    %ecx,%eax
    2b0e:	8b 34 24             	mov    (%esp),%esi
    2b11:	01 06                	add    %eax,(%esi)
    2b13:	83 c3 01             	add    $0x1,%ebx
    2b16:	83 fb 07             	cmp    $0x7,%ebx
    2b19:	7e a5                	jle    2ac0 <naive2_conv+0x18>
    2b1b:	8b 2c 24             	mov    (%esp),%ebp
    2b1e:	83 c7 01             	add    $0x1,%edi
    2b21:	83 ff 07             	cmp    $0x7,%edi
    2b24:	7f 0a                	jg     2b30 <naive2_conv+0x88>
    2b26:	bb 00 00 00 00       	mov    $0x0,%ebx
    2b2b:	89 2c 24             	mov    %ebp,(%esp)
    2b2e:	eb e6                	jmp    2b16 <naive2_conv+0x6e>
    2b30:	83 44 24 04 01       	addl   $0x1,0x4(%esp)
    2b35:	8b 7c 24 04          	mov    0x4(%esp),%edi
    2b39:	39 7c 24 0c          	cmp    %edi,0xc(%esp)
    2b3d:	7e 24                	jle    2b63 <naive2_conv+0xbb>
    2b3f:	8b 44 24 08          	mov    0x8(%esp),%eax
    2b43:	0f af 44 24 24       	imul   0x24(%esp),%eax
    2b48:	8b 7c 24 04          	mov    0x4(%esp),%edi
    2b4c:	01 f8                	add    %edi,%eax
    2b4e:	8b 7c 24 30          	mov    0x30(%esp),%edi
    2b52:	8d 2c 87             	lea    (%edi,%eax,4),%ebp
    2b55:	c7 45 00 00 00 00 00 	movl   $0x0,0x0(%ebp)
    2b5c:	bf 00 00 00 00       	mov    $0x0,%edi
    2b61:	eb be                	jmp    2b21 <naive2_conv+0x79>
    2b63:	8b 4c 24 30          	mov    0x30(%esp),%ecx
    2b67:	83 44 24 08 01       	addl   $0x1,0x8(%esp)
    2b6c:	8b 44 24 24          	mov    0x24(%esp),%eax
    2b70:	8d 50 f9             	lea    -0x7(%eax),%edx
    2b73:	8b 44 24 08          	mov    0x8(%esp),%eax
    2b77:	39 c2                	cmp    %eax,%edx
    2b79:	7e 12                	jle    2b8d <naive2_conv+0xe5>
    2b7b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2b82:	00 
    2b83:	89 54 24 0c          	mov    %edx,0xc(%esp)
    2b87:	89 4c 24 30          	mov    %ecx,0x30(%esp)
    2b8b:	eb a8                	jmp    2b35 <naive2_conv+0x8d>
    2b8d:	83 c4 10             	add    $0x10,%esp
    2b90:	5b                   	pop    %ebx
    2b91:	5e                   	pop    %esi
    2b92:	5f                   	pop    %edi
    2b93:	5d                   	pop    %ebp
    2b94:	c3                   	ret

00002b95 <forth_conv>:
    2b95:	55                   	push   %ebp
    2b96:	57                   	push   %edi
    2b97:	56                   	push   %esi
    2b98:	53                   	push   %ebx
    2b99:	83 ec 18             	sub    $0x18,%esp
    2b9c:	8b 7c 24 34          	mov    0x34(%esp),%edi
    2ba0:	8b 44 24 2c          	mov    0x2c(%esp),%eax
    2ba4:	83 e8 07             	sub    $0x7,%eax
    2ba7:	89 44 24 0c          	mov    %eax,0xc(%esp)
    2bab:	bb 00 00 00 00       	mov    $0x0,%ebx
    2bb0:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
    2bb7:	00 
    2bb8:	89 fa                	mov    %edi,%edx
    2bba:	e9 0c 0d 00 00       	jmp    38cb <forth_conv+0xd36>
    2bbf:	8b 7c 24 10          	mov    0x10(%esp),%edi
    2bc3:	01 f8                	add    %edi,%eax
    2bc5:	89 04 24             	mov    %eax,(%esp)
    2bc8:	8d 0c 40             	lea    (%eax,%eax,2),%ecx
    2bcb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
    2bce:	8d 5c 05 00          	lea    0x0(%ebp,%eax,1),%ebx
    2bd2:	0f b7 33             	movzwl (%ebx),%esi
    2bd5:	0f b7 0a             	movzwl (%edx),%ecx
    2bd8:	0f af f1             	imul   %ecx,%esi
    2bdb:	0f b7 4b 02          	movzwl 0x2(%ebx),%ecx
    2bdf:	0f b7 7a 02          	movzwl 0x2(%edx),%edi
    2be3:	0f af cf             	imul   %edi,%ecx
    2be6:	01 f1                	add    %esi,%ecx
    2be8:	0f b7 5b 04          	movzwl 0x4(%ebx),%ebx
    2bec:	0f b7 72 04          	movzwl 0x4(%edx),%esi
    2bf0:	0f af de             	imul   %esi,%ebx
    2bf3:	01 cb                	add    %ecx,%ebx
    2bf5:	8b 3c 24             	mov    (%esp),%edi
    2bf8:	8d 74 7f 03          	lea    0x3(%edi,%edi,2),%esi
    2bfc:	8d 0c 36             	lea    (%esi,%esi,1),%ecx
    2bff:	01 e9                	add    %ebp,%ecx
    2c01:	0f b7 31             	movzwl (%ecx),%esi
    2c04:	0f b7 7a 06          	movzwl 0x6(%edx),%edi
    2c08:	0f af f7             	imul   %edi,%esi
    2c0b:	01 de                	add    %ebx,%esi
    2c0d:	0f b7 59 02          	movzwl 0x2(%ecx),%ebx
    2c11:	0f b7 7a 08          	movzwl 0x8(%edx),%edi
    2c15:	0f af df             	imul   %edi,%ebx
    2c18:	01 f3                	add    %esi,%ebx
    2c1a:	0f b7 49 04          	movzwl 0x4(%ecx),%ecx
    2c1e:	0f b7 72 0a          	movzwl 0xa(%edx),%esi
    2c22:	0f af ce             	imul   %esi,%ecx
    2c25:	01 d9                	add    %ebx,%ecx
    2c27:	8d 74 05 0c          	lea    0xc(%ebp,%eax,1),%esi
    2c2b:	0f b7 1e             	movzwl (%esi),%ebx
    2c2e:	0f b7 7a 0c          	movzwl 0xc(%edx),%edi
    2c32:	0f af df             	imul   %edi,%ebx
    2c35:	01 cb                	add    %ecx,%ebx
    2c37:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    2c3b:	0f b7 7a 0e          	movzwl 0xe(%edx),%edi
    2c3f:	0f af cf             	imul   %edi,%ecx
    2c42:	01 cb                	add    %ecx,%ebx
    2c44:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    2c48:	0f b7 72 10          	movzwl 0x10(%edx),%esi
    2c4c:	0f af ce             	imul   %esi,%ecx
    2c4f:	01 d9                	add    %ebx,%ecx
    2c51:	8d 74 05 12          	lea    0x12(%ebp,%eax,1),%esi
    2c55:	0f b7 1e             	movzwl (%esi),%ebx
    2c58:	0f b7 7a 12          	movzwl 0x12(%edx),%edi
    2c5c:	0f af df             	imul   %edi,%ebx
    2c5f:	01 cb                	add    %ecx,%ebx
    2c61:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    2c65:	0f b7 7a 14          	movzwl 0x14(%edx),%edi
    2c69:	0f af cf             	imul   %edi,%ecx
    2c6c:	01 cb                	add    %ecx,%ebx
    2c6e:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    2c72:	0f b7 72 16          	movzwl 0x16(%edx),%esi
    2c76:	0f af ce             	imul   %esi,%ecx
    2c79:	01 d9                	add    %ebx,%ecx
    2c7b:	8d 74 05 18          	lea    0x18(%ebp,%eax,1),%esi
    2c7f:	0f b7 1e             	movzwl (%esi),%ebx
    2c82:	0f b7 7a 18          	movzwl 0x18(%edx),%edi
    2c86:	0f af df             	imul   %edi,%ebx
    2c89:	01 cb                	add    %ecx,%ebx
    2c8b:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    2c8f:	0f b7 7a 1a          	movzwl 0x1a(%edx),%edi
    2c93:	0f af cf             	imul   %edi,%ecx
    2c96:	01 cb                	add    %ecx,%ebx
    2c98:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    2c9c:	0f b7 72 1c          	movzwl 0x1c(%edx),%esi
    2ca0:	0f af ce             	imul   %esi,%ecx
    2ca3:	01 d9                	add    %ebx,%ecx
    2ca5:	8d 74 05 1e          	lea    0x1e(%ebp,%eax,1),%esi
    2ca9:	0f b7 1e             	movzwl (%esi),%ebx
    2cac:	0f b7 7a 1e          	movzwl 0x1e(%edx),%edi
    2cb0:	0f af df             	imul   %edi,%ebx
    2cb3:	01 cb                	add    %ecx,%ebx
    2cb5:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    2cb9:	0f b7 7a 20          	movzwl 0x20(%edx),%edi
    2cbd:	0f af cf             	imul   %edi,%ecx
    2cc0:	01 cb                	add    %ecx,%ebx
    2cc2:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    2cc6:	0f b7 72 22          	movzwl 0x22(%edx),%esi
    2cca:	0f af ce             	imul   %esi,%ecx
    2ccd:	01 d9                	add    %ebx,%ecx
    2ccf:	8d 74 05 24          	lea    0x24(%ebp,%eax,1),%esi
    2cd3:	0f b7 1e             	movzwl (%esi),%ebx
    2cd6:	0f b7 7a 24          	movzwl 0x24(%edx),%edi
    2cda:	0f af df             	imul   %edi,%ebx
    2cdd:	01 cb                	add    %ecx,%ebx
    2cdf:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    2ce3:	0f b7 7a 26          	movzwl 0x26(%edx),%edi
    2ce7:	0f af cf             	imul   %edi,%ecx
    2cea:	01 d9                	add    %ebx,%ecx
    2cec:	0f b7 76 04          	movzwl 0x4(%esi),%esi
    2cf0:	0f b7 5a 28          	movzwl 0x28(%edx),%ebx
    2cf4:	0f af f3             	imul   %ebx,%esi
    2cf7:	01 ce                	add    %ecx,%esi
    2cf9:	8d 5c 05 2a          	lea    0x2a(%ebp,%eax,1),%ebx
    2cfd:	0f b7 0b             	movzwl (%ebx),%ecx
    2d00:	0f b7 42 2a          	movzwl 0x2a(%edx),%eax
    2d04:	0f af c8             	imul   %eax,%ecx
    2d07:	01 f1                	add    %esi,%ecx
    2d09:	0f b7 43 02          	movzwl 0x2(%ebx),%eax
    2d0d:	0f b7 72 2c          	movzwl 0x2c(%edx),%esi
    2d11:	0f af c6             	imul   %esi,%eax
    2d14:	01 c8                	add    %ecx,%eax
    2d16:	0f b7 4b 04          	movzwl 0x4(%ebx),%ecx
    2d1a:	0f b7 5a 2e          	movzwl 0x2e(%edx),%ebx
    2d1e:	0f af cb             	imul   %ebx,%ecx
    2d21:	01 c1                	add    %eax,%ecx
    2d23:	8b 34 24             	mov    (%esp),%esi
    2d26:	03 74 24 2c          	add    0x2c(%esp),%esi
    2d2a:	89 74 24 04          	mov    %esi,0x4(%esp)
    2d2e:	8d 1c 76             	lea    (%esi,%esi,2),%ebx
    2d31:	8d 04 1b             	lea    (%ebx,%ebx,1),%eax
    2d34:	8d 74 05 00          	lea    0x0(%ebp,%eax,1),%esi
    2d38:	0f b7 1e             	movzwl (%esi),%ebx
    2d3b:	0f b7 7a 30          	movzwl 0x30(%edx),%edi
    2d3f:	0f af df             	imul   %edi,%ebx
    2d42:	01 cb                	add    %ecx,%ebx
    2d44:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    2d48:	0f b7 7a 32          	movzwl 0x32(%edx),%edi
    2d4c:	0f af cf             	imul   %edi,%ecx
    2d4f:	01 d9                	add    %ebx,%ecx
    2d51:	0f b7 5e 04          	movzwl 0x4(%esi),%ebx
    2d55:	0f b7 72 34          	movzwl 0x34(%edx),%esi
    2d59:	0f af de             	imul   %esi,%ebx
    2d5c:	01 cb                	add    %ecx,%ebx
    2d5e:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    2d62:	8d 74 49 03          	lea    0x3(%ecx,%ecx,2),%esi
    2d66:	8d 0c 36             	lea    (%esi,%esi,1),%ecx
    2d69:	01 e9                	add    %ebp,%ecx
    2d6b:	0f b7 31             	movzwl (%ecx),%esi
    2d6e:	0f b7 7a 36          	movzwl 0x36(%edx),%edi
    2d72:	0f af f7             	imul   %edi,%esi
    2d75:	01 de                	add    %ebx,%esi
    2d77:	0f b7 59 02          	movzwl 0x2(%ecx),%ebx
    2d7b:	0f b7 7a 38          	movzwl 0x38(%edx),%edi
    2d7f:	0f af df             	imul   %edi,%ebx
    2d82:	01 f3                	add    %esi,%ebx
    2d84:	0f b7 49 04          	movzwl 0x4(%ecx),%ecx
    2d88:	0f b7 72 3a          	movzwl 0x3a(%edx),%esi
    2d8c:	0f af ce             	imul   %esi,%ecx
    2d8f:	01 d9                	add    %ebx,%ecx
    2d91:	8d 74 05 0c          	lea    0xc(%ebp,%eax,1),%esi
    2d95:	0f b7 1e             	movzwl (%esi),%ebx
    2d98:	0f b7 7a 3c          	movzwl 0x3c(%edx),%edi
    2d9c:	0f af df             	imul   %edi,%ebx
    2d9f:	01 cb                	add    %ecx,%ebx
    2da1:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    2da5:	0f b7 7a 3e          	movzwl 0x3e(%edx),%edi
    2da9:	0f af cf             	imul   %edi,%ecx
    2dac:	01 cb                	add    %ecx,%ebx
    2dae:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    2db2:	0f b7 72 40          	movzwl 0x40(%edx),%esi
    2db6:	0f af ce             	imul   %esi,%ecx
    2db9:	01 d9                	add    %ebx,%ecx
    2dbb:	8d 74 05 12          	lea    0x12(%ebp,%eax,1),%esi
    2dbf:	0f b7 1e             	movzwl (%esi),%ebx
    2dc2:	0f b7 7a 42          	movzwl 0x42(%edx),%edi
    2dc6:	0f af df             	imul   %edi,%ebx
    2dc9:	01 cb                	add    %ecx,%ebx
    2dcb:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    2dcf:	0f b7 7a 44          	movzwl 0x44(%edx),%edi
    2dd3:	0f af cf             	imul   %edi,%ecx
    2dd6:	01 cb                	add    %ecx,%ebx
    2dd8:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    2ddc:	0f b7 72 46          	movzwl 0x46(%edx),%esi
    2de0:	0f af ce             	imul   %esi,%ecx
    2de3:	01 d9                	add    %ebx,%ecx
    2de5:	8d 74 05 18          	lea    0x18(%ebp,%eax,1),%esi
    2de9:	0f b7 1e             	movzwl (%esi),%ebx
    2dec:	0f b7 7a 48          	movzwl 0x48(%edx),%edi
    2df0:	0f af df             	imul   %edi,%ebx
    2df3:	01 cb                	add    %ecx,%ebx
    2df5:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    2df9:	0f b7 7a 4a          	movzwl 0x4a(%edx),%edi
    2dfd:	0f af cf             	imul   %edi,%ecx
    2e00:	01 cb                	add    %ecx,%ebx
    2e02:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    2e06:	0f b7 72 4c          	movzwl 0x4c(%edx),%esi
    2e0a:	0f af ce             	imul   %esi,%ecx
    2e0d:	01 d9                	add    %ebx,%ecx
    2e0f:	8d 74 05 1e          	lea    0x1e(%ebp,%eax,1),%esi
    2e13:	0f b7 1e             	movzwl (%esi),%ebx
    2e16:	0f b7 7a 4e          	movzwl 0x4e(%edx),%edi
    2e1a:	0f af df             	imul   %edi,%ebx
    2e1d:	01 cb                	add    %ecx,%ebx
    2e1f:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    2e23:	0f b7 7a 50          	movzwl 0x50(%edx),%edi
    2e27:	0f af cf             	imul   %edi,%ecx
    2e2a:	01 cb                	add    %ecx,%ebx
    2e2c:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    2e30:	0f b7 72 52          	movzwl 0x52(%edx),%esi
    2e34:	0f af ce             	imul   %esi,%ecx
    2e37:	01 d9                	add    %ebx,%ecx
    2e39:	8d 74 05 24          	lea    0x24(%ebp,%eax,1),%esi
    2e3d:	0f b7 1e             	movzwl (%esi),%ebx
    2e40:	0f b7 7a 54          	movzwl 0x54(%edx),%edi
    2e44:	0f af df             	imul   %edi,%ebx
    2e47:	01 cb                	add    %ecx,%ebx
    2e49:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    2e4d:	0f b7 7a 56          	movzwl 0x56(%edx),%edi
    2e51:	0f af cf             	imul   %edi,%ecx
    2e54:	01 d9                	add    %ebx,%ecx
    2e56:	0f b7 76 04          	movzwl 0x4(%esi),%esi
    2e5a:	0f b7 5a 58          	movzwl 0x58(%edx),%ebx
    2e5e:	0f af f3             	imul   %ebx,%esi
    2e61:	01 ce                	add    %ecx,%esi
    2e63:	8d 5c 05 2a          	lea    0x2a(%ebp,%eax,1),%ebx
    2e67:	0f b7 0b             	movzwl (%ebx),%ecx
    2e6a:	0f b7 42 5a          	movzwl 0x5a(%edx),%eax
    2e6e:	0f af c8             	imul   %eax,%ecx
    2e71:	01 f1                	add    %esi,%ecx
    2e73:	0f b7 43 02          	movzwl 0x2(%ebx),%eax
    2e77:	0f b7 72 5c          	movzwl 0x5c(%edx),%esi
    2e7b:	0f af c6             	imul   %esi,%eax
    2e7e:	01 c8                	add    %ecx,%eax
    2e80:	0f b7 4b 04          	movzwl 0x4(%ebx),%ecx
    2e84:	0f b7 5a 5e          	movzwl 0x5e(%edx),%ebx
    2e88:	0f af cb             	imul   %ebx,%ecx
    2e8b:	01 c1                	add    %eax,%ecx
    2e8d:	8b 44 24 04          	mov    0x4(%esp),%eax
    2e91:	03 44 24 2c          	add    0x2c(%esp),%eax
    2e95:	89 44 24 04          	mov    %eax,0x4(%esp)
    2e99:	8d 1c 40             	lea    (%eax,%eax,2),%ebx
    2e9c:	8d 04 1b             	lea    (%ebx,%ebx,1),%eax
    2e9f:	8d 74 05 00          	lea    0x0(%ebp,%eax,1),%esi
    2ea3:	0f b7 1e             	movzwl (%esi),%ebx
    2ea6:	0f b7 7a 60          	movzwl 0x60(%edx),%edi
    2eaa:	0f af df             	imul   %edi,%ebx
    2ead:	01 cb                	add    %ecx,%ebx
    2eaf:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    2eb3:	0f b7 7a 62          	movzwl 0x62(%edx),%edi
    2eb7:	0f af cf             	imul   %edi,%ecx
    2eba:	01 d9                	add    %ebx,%ecx
    2ebc:	0f b7 5e 04          	movzwl 0x4(%esi),%ebx
    2ec0:	0f b7 72 64          	movzwl 0x64(%edx),%esi
    2ec4:	0f af de             	imul   %esi,%ebx
    2ec7:	01 cb                	add    %ecx,%ebx
    2ec9:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    2ecd:	8d 74 49 03          	lea    0x3(%ecx,%ecx,2),%esi
    2ed1:	8d 0c 36             	lea    (%esi,%esi,1),%ecx
    2ed4:	01 e9                	add    %ebp,%ecx
    2ed6:	0f b7 31             	movzwl (%ecx),%esi
    2ed9:	0f b7 7a 66          	movzwl 0x66(%edx),%edi
    2edd:	0f af f7             	imul   %edi,%esi
    2ee0:	01 de                	add    %ebx,%esi
    2ee2:	0f b7 59 02          	movzwl 0x2(%ecx),%ebx
    2ee6:	0f b7 7a 68          	movzwl 0x68(%edx),%edi
    2eea:	0f af df             	imul   %edi,%ebx
    2eed:	01 f3                	add    %esi,%ebx
    2eef:	0f b7 49 04          	movzwl 0x4(%ecx),%ecx
    2ef3:	0f b7 72 6a          	movzwl 0x6a(%edx),%esi
    2ef7:	0f af ce             	imul   %esi,%ecx
    2efa:	01 d9                	add    %ebx,%ecx
    2efc:	8d 74 05 0c          	lea    0xc(%ebp,%eax,1),%esi
    2f00:	0f b7 1e             	movzwl (%esi),%ebx
    2f03:	0f b7 7a 6c          	movzwl 0x6c(%edx),%edi
    2f07:	0f af df             	imul   %edi,%ebx
    2f0a:	01 cb                	add    %ecx,%ebx
    2f0c:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    2f10:	0f b7 7a 6e          	movzwl 0x6e(%edx),%edi
    2f14:	0f af cf             	imul   %edi,%ecx
    2f17:	01 cb                	add    %ecx,%ebx
    2f19:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    2f1d:	0f b7 72 70          	movzwl 0x70(%edx),%esi
    2f21:	0f af ce             	imul   %esi,%ecx
    2f24:	01 d9                	add    %ebx,%ecx
    2f26:	8d 74 05 12          	lea    0x12(%ebp,%eax,1),%esi
    2f2a:	0f b7 1e             	movzwl (%esi),%ebx
    2f2d:	0f b7 7a 72          	movzwl 0x72(%edx),%edi
    2f31:	0f af df             	imul   %edi,%ebx
    2f34:	01 cb                	add    %ecx,%ebx
    2f36:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    2f3a:	0f b7 7a 74          	movzwl 0x74(%edx),%edi
    2f3e:	0f af cf             	imul   %edi,%ecx
    2f41:	01 cb                	add    %ecx,%ebx
    2f43:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    2f47:	0f b7 72 76          	movzwl 0x76(%edx),%esi
    2f4b:	0f af ce             	imul   %esi,%ecx
    2f4e:	01 d9                	add    %ebx,%ecx
    2f50:	8d 74 05 18          	lea    0x18(%ebp,%eax,1),%esi
    2f54:	0f b7 1e             	movzwl (%esi),%ebx
    2f57:	0f b7 7a 78          	movzwl 0x78(%edx),%edi
    2f5b:	0f af df             	imul   %edi,%ebx
    2f5e:	01 cb                	add    %ecx,%ebx
    2f60:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    2f64:	0f b7 7a 7a          	movzwl 0x7a(%edx),%edi
    2f68:	0f af cf             	imul   %edi,%ecx
    2f6b:	01 cb                	add    %ecx,%ebx
    2f6d:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    2f71:	0f b7 72 7c          	movzwl 0x7c(%edx),%esi
    2f75:	0f af ce             	imul   %esi,%ecx
    2f78:	01 d9                	add    %ebx,%ecx
    2f7a:	8d 74 05 1e          	lea    0x1e(%ebp,%eax,1),%esi
    2f7e:	0f b7 1e             	movzwl (%esi),%ebx
    2f81:	0f b7 7a 7e          	movzwl 0x7e(%edx),%edi
    2f85:	0f af df             	imul   %edi,%ebx
    2f88:	01 cb                	add    %ecx,%ebx
    2f8a:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    2f8e:	0f b7 ba 80 00 00 00 	movzwl 0x80(%edx),%edi
    2f95:	0f af cf             	imul   %edi,%ecx
    2f98:	01 cb                	add    %ecx,%ebx
    2f9a:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    2f9e:	0f b7 b2 82 00 00 00 	movzwl 0x82(%edx),%esi
    2fa5:	0f af ce             	imul   %esi,%ecx
    2fa8:	01 d9                	add    %ebx,%ecx
    2faa:	8d 74 05 24          	lea    0x24(%ebp,%eax,1),%esi
    2fae:	0f b7 1e             	movzwl (%esi),%ebx
    2fb1:	0f b7 ba 84 00 00 00 	movzwl 0x84(%edx),%edi
    2fb8:	0f af df             	imul   %edi,%ebx
    2fbb:	01 cb                	add    %ecx,%ebx
    2fbd:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    2fc1:	0f b7 ba 86 00 00 00 	movzwl 0x86(%edx),%edi
    2fc8:	0f af cf             	imul   %edi,%ecx
    2fcb:	01 d9                	add    %ebx,%ecx
    2fcd:	0f b7 76 04          	movzwl 0x4(%esi),%esi
    2fd1:	0f b7 9a 88 00 00 00 	movzwl 0x88(%edx),%ebx
    2fd8:	0f af f3             	imul   %ebx,%esi
    2fdb:	01 ce                	add    %ecx,%esi
    2fdd:	8d 5c 05 2a          	lea    0x2a(%ebp,%eax,1),%ebx
    2fe1:	0f b7 0b             	movzwl (%ebx),%ecx
    2fe4:	0f b7 82 8a 00 00 00 	movzwl 0x8a(%edx),%eax
    2feb:	0f af c8             	imul   %eax,%ecx
    2fee:	01 f1                	add    %esi,%ecx
    2ff0:	0f b7 43 02          	movzwl 0x2(%ebx),%eax
    2ff4:	0f b7 b2 8c 00 00 00 	movzwl 0x8c(%edx),%esi
    2ffb:	0f af c6             	imul   %esi,%eax
    2ffe:	01 c8                	add    %ecx,%eax
    3000:	0f b7 4b 04          	movzwl 0x4(%ebx),%ecx
    3004:	0f b7 9a 8e 00 00 00 	movzwl 0x8e(%edx),%ebx
    300b:	0f af cb             	imul   %ebx,%ecx
    300e:	01 c1                	add    %eax,%ecx
    3010:	8b 44 24 04          	mov    0x4(%esp),%eax
    3014:	03 44 24 2c          	add    0x2c(%esp),%eax
    3018:	89 44 24 04          	mov    %eax,0x4(%esp)
    301c:	8d 1c 40             	lea    (%eax,%eax,2),%ebx
    301f:	8d 04 1b             	lea    (%ebx,%ebx,1),%eax
    3022:	8d 74 05 00          	lea    0x0(%ebp,%eax,1),%esi
    3026:	0f b7 1e             	movzwl (%esi),%ebx
    3029:	0f b7 ba 90 00 00 00 	movzwl 0x90(%edx),%edi
    3030:	0f af df             	imul   %edi,%ebx
    3033:	01 cb                	add    %ecx,%ebx
    3035:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    3039:	0f b7 ba 92 00 00 00 	movzwl 0x92(%edx),%edi
    3040:	0f af cf             	imul   %edi,%ecx
    3043:	01 d9                	add    %ebx,%ecx
    3045:	0f b7 5e 04          	movzwl 0x4(%esi),%ebx
    3049:	0f b7 b2 94 00 00 00 	movzwl 0x94(%edx),%esi
    3050:	0f af de             	imul   %esi,%ebx
    3053:	01 cb                	add    %ecx,%ebx
    3055:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    3059:	8d 74 49 03          	lea    0x3(%ecx,%ecx,2),%esi
    305d:	8d 0c 36             	lea    (%esi,%esi,1),%ecx
    3060:	01 e9                	add    %ebp,%ecx
    3062:	0f b7 31             	movzwl (%ecx),%esi
    3065:	0f b7 ba 96 00 00 00 	movzwl 0x96(%edx),%edi
    306c:	0f af f7             	imul   %edi,%esi
    306f:	01 de                	add    %ebx,%esi
    3071:	0f b7 59 02          	movzwl 0x2(%ecx),%ebx
    3075:	0f b7 ba 98 00 00 00 	movzwl 0x98(%edx),%edi
    307c:	0f af df             	imul   %edi,%ebx
    307f:	01 f3                	add    %esi,%ebx
    3081:	0f b7 49 04          	movzwl 0x4(%ecx),%ecx
    3085:	0f b7 b2 9a 00 00 00 	movzwl 0x9a(%edx),%esi
    308c:	0f af ce             	imul   %esi,%ecx
    308f:	01 d9                	add    %ebx,%ecx
    3091:	8d 74 05 0c          	lea    0xc(%ebp,%eax,1),%esi
    3095:	0f b7 1e             	movzwl (%esi),%ebx
    3098:	0f b7 ba 9c 00 00 00 	movzwl 0x9c(%edx),%edi
    309f:	0f af df             	imul   %edi,%ebx
    30a2:	01 cb                	add    %ecx,%ebx
    30a4:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    30a8:	0f b7 ba 9e 00 00 00 	movzwl 0x9e(%edx),%edi
    30af:	0f af cf             	imul   %edi,%ecx
    30b2:	01 cb                	add    %ecx,%ebx
    30b4:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    30b8:	0f b7 b2 a0 00 00 00 	movzwl 0xa0(%edx),%esi
    30bf:	0f af ce             	imul   %esi,%ecx
    30c2:	01 d9                	add    %ebx,%ecx
    30c4:	8d 74 05 12          	lea    0x12(%ebp,%eax,1),%esi
    30c8:	0f b7 1e             	movzwl (%esi),%ebx
    30cb:	0f b7 ba a2 00 00 00 	movzwl 0xa2(%edx),%edi
    30d2:	0f af df             	imul   %edi,%ebx
    30d5:	01 cb                	add    %ecx,%ebx
    30d7:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    30db:	0f b7 ba a4 00 00 00 	movzwl 0xa4(%edx),%edi
    30e2:	0f af cf             	imul   %edi,%ecx
    30e5:	01 cb                	add    %ecx,%ebx
    30e7:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    30eb:	0f b7 b2 a6 00 00 00 	movzwl 0xa6(%edx),%esi
    30f2:	0f af ce             	imul   %esi,%ecx
    30f5:	01 d9                	add    %ebx,%ecx
    30f7:	8d 74 05 18          	lea    0x18(%ebp,%eax,1),%esi
    30fb:	0f b7 1e             	movzwl (%esi),%ebx
    30fe:	0f b7 ba a8 00 00 00 	movzwl 0xa8(%edx),%edi
    3105:	0f af df             	imul   %edi,%ebx
    3108:	01 cb                	add    %ecx,%ebx
    310a:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    310e:	0f b7 ba aa 00 00 00 	movzwl 0xaa(%edx),%edi
    3115:	0f af cf             	imul   %edi,%ecx
    3118:	01 cb                	add    %ecx,%ebx
    311a:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    311e:	0f b7 b2 ac 00 00 00 	movzwl 0xac(%edx),%esi
    3125:	0f af ce             	imul   %esi,%ecx
    3128:	01 d9                	add    %ebx,%ecx
    312a:	8d 74 05 1e          	lea    0x1e(%ebp,%eax,1),%esi
    312e:	0f b7 1e             	movzwl (%esi),%ebx
    3131:	0f b7 ba ae 00 00 00 	movzwl 0xae(%edx),%edi
    3138:	0f af df             	imul   %edi,%ebx
    313b:	01 cb                	add    %ecx,%ebx
    313d:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    3141:	0f b7 ba b0 00 00 00 	movzwl 0xb0(%edx),%edi
    3148:	0f af cf             	imul   %edi,%ecx
    314b:	01 cb                	add    %ecx,%ebx
    314d:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    3151:	0f b7 b2 b2 00 00 00 	movzwl 0xb2(%edx),%esi
    3158:	0f af ce             	imul   %esi,%ecx
    315b:	01 d9                	add    %ebx,%ecx
    315d:	8d 74 05 24          	lea    0x24(%ebp,%eax,1),%esi
    3161:	0f b7 1e             	movzwl (%esi),%ebx
    3164:	0f b7 ba b4 00 00 00 	movzwl 0xb4(%edx),%edi
    316b:	0f af df             	imul   %edi,%ebx
    316e:	01 cb                	add    %ecx,%ebx
    3170:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    3174:	0f b7 ba b6 00 00 00 	movzwl 0xb6(%edx),%edi
    317b:	0f af cf             	imul   %edi,%ecx
    317e:	01 d9                	add    %ebx,%ecx
    3180:	0f b7 76 04          	movzwl 0x4(%esi),%esi
    3184:	0f b7 9a b8 00 00 00 	movzwl 0xb8(%edx),%ebx
    318b:	0f af f3             	imul   %ebx,%esi
    318e:	01 ce                	add    %ecx,%esi
    3190:	8d 5c 05 2a          	lea    0x2a(%ebp,%eax,1),%ebx
    3194:	0f b7 0b             	movzwl (%ebx),%ecx
    3197:	0f b7 82 ba 00 00 00 	movzwl 0xba(%edx),%eax
    319e:	0f af c8             	imul   %eax,%ecx
    31a1:	01 f1                	add    %esi,%ecx
    31a3:	0f b7 43 02          	movzwl 0x2(%ebx),%eax
    31a7:	0f b7 b2 bc 00 00 00 	movzwl 0xbc(%edx),%esi
    31ae:	0f af c6             	imul   %esi,%eax
    31b1:	01 c8                	add    %ecx,%eax
    31b3:	0f b7 4b 04          	movzwl 0x4(%ebx),%ecx
    31b7:	0f b7 9a be 00 00 00 	movzwl 0xbe(%edx),%ebx
    31be:	0f af cb             	imul   %ebx,%ecx
    31c1:	01 c1                	add    %eax,%ecx
    31c3:	8b 44 24 04          	mov    0x4(%esp),%eax
    31c7:	03 44 24 2c          	add    0x2c(%esp),%eax
    31cb:	89 44 24 04          	mov    %eax,0x4(%esp)
    31cf:	8d 1c 40             	lea    (%eax,%eax,2),%ebx
    31d2:	8d 04 1b             	lea    (%ebx,%ebx,1),%eax
    31d5:	8d 74 05 00          	lea    0x0(%ebp,%eax,1),%esi
    31d9:	0f b7 1e             	movzwl (%esi),%ebx
    31dc:	0f b7 ba c0 00 00 00 	movzwl 0xc0(%edx),%edi
    31e3:	0f af df             	imul   %edi,%ebx
    31e6:	01 cb                	add    %ecx,%ebx
    31e8:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    31ec:	0f b7 ba c2 00 00 00 	movzwl 0xc2(%edx),%edi
    31f3:	0f af cf             	imul   %edi,%ecx
    31f6:	01 d9                	add    %ebx,%ecx
    31f8:	0f b7 5e 04          	movzwl 0x4(%esi),%ebx
    31fc:	0f b7 b2 c4 00 00 00 	movzwl 0xc4(%edx),%esi
    3203:	0f af de             	imul   %esi,%ebx
    3206:	01 cb                	add    %ecx,%ebx
    3208:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    320c:	8d 74 49 03          	lea    0x3(%ecx,%ecx,2),%esi
    3210:	8d 0c 36             	lea    (%esi,%esi,1),%ecx
    3213:	01 e9                	add    %ebp,%ecx
    3215:	0f b7 31             	movzwl (%ecx),%esi
    3218:	0f b7 ba c6 00 00 00 	movzwl 0xc6(%edx),%edi
    321f:	0f af f7             	imul   %edi,%esi
    3222:	01 de                	add    %ebx,%esi
    3224:	0f b7 59 02          	movzwl 0x2(%ecx),%ebx
    3228:	0f b7 ba c8 00 00 00 	movzwl 0xc8(%edx),%edi
    322f:	0f af df             	imul   %edi,%ebx
    3232:	01 f3                	add    %esi,%ebx
    3234:	0f b7 49 04          	movzwl 0x4(%ecx),%ecx
    3238:	0f b7 b2 ca 00 00 00 	movzwl 0xca(%edx),%esi
    323f:	0f af ce             	imul   %esi,%ecx
    3242:	01 d9                	add    %ebx,%ecx
    3244:	8d 74 05 0c          	lea    0xc(%ebp,%eax,1),%esi
    3248:	0f b7 1e             	movzwl (%esi),%ebx
    324b:	0f b7 ba cc 00 00 00 	movzwl 0xcc(%edx),%edi
    3252:	0f af df             	imul   %edi,%ebx
    3255:	01 cb                	add    %ecx,%ebx
    3257:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    325b:	0f b7 ba ce 00 00 00 	movzwl 0xce(%edx),%edi
    3262:	0f af cf             	imul   %edi,%ecx
    3265:	01 cb                	add    %ecx,%ebx
    3267:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    326b:	0f b7 b2 d0 00 00 00 	movzwl 0xd0(%edx),%esi
    3272:	0f af ce             	imul   %esi,%ecx
    3275:	01 d9                	add    %ebx,%ecx
    3277:	8d 74 05 12          	lea    0x12(%ebp,%eax,1),%esi
    327b:	0f b7 1e             	movzwl (%esi),%ebx
    327e:	0f b7 ba d2 00 00 00 	movzwl 0xd2(%edx),%edi
    3285:	0f af df             	imul   %edi,%ebx
    3288:	01 cb                	add    %ecx,%ebx
    328a:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    328e:	0f b7 ba d4 00 00 00 	movzwl 0xd4(%edx),%edi
    3295:	0f af cf             	imul   %edi,%ecx
    3298:	01 cb                	add    %ecx,%ebx
    329a:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    329e:	0f b7 b2 d6 00 00 00 	movzwl 0xd6(%edx),%esi
    32a5:	0f af ce             	imul   %esi,%ecx
    32a8:	01 d9                	add    %ebx,%ecx
    32aa:	8d 74 05 18          	lea    0x18(%ebp,%eax,1),%esi
    32ae:	0f b7 1e             	movzwl (%esi),%ebx
    32b1:	0f b7 ba d8 00 00 00 	movzwl 0xd8(%edx),%edi
    32b8:	0f af df             	imul   %edi,%ebx
    32bb:	01 cb                	add    %ecx,%ebx
    32bd:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    32c1:	0f b7 ba da 00 00 00 	movzwl 0xda(%edx),%edi
    32c8:	0f af cf             	imul   %edi,%ecx
    32cb:	01 cb                	add    %ecx,%ebx
    32cd:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    32d1:	0f b7 b2 dc 00 00 00 	movzwl 0xdc(%edx),%esi
    32d8:	0f af ce             	imul   %esi,%ecx
    32db:	01 d9                	add    %ebx,%ecx
    32dd:	8d 74 05 1e          	lea    0x1e(%ebp,%eax,1),%esi
    32e1:	0f b7 1e             	movzwl (%esi),%ebx
    32e4:	0f b7 ba de 00 00 00 	movzwl 0xde(%edx),%edi
    32eb:	0f af df             	imul   %edi,%ebx
    32ee:	01 cb                	add    %ecx,%ebx
    32f0:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    32f4:	0f b7 ba e0 00 00 00 	movzwl 0xe0(%edx),%edi
    32fb:	0f af cf             	imul   %edi,%ecx
    32fe:	01 cb                	add    %ecx,%ebx
    3300:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    3304:	0f b7 b2 e2 00 00 00 	movzwl 0xe2(%edx),%esi
    330b:	0f af ce             	imul   %esi,%ecx
    330e:	01 d9                	add    %ebx,%ecx
    3310:	8d 74 05 24          	lea    0x24(%ebp,%eax,1),%esi
    3314:	0f b7 1e             	movzwl (%esi),%ebx
    3317:	0f b7 ba e4 00 00 00 	movzwl 0xe4(%edx),%edi
    331e:	0f af df             	imul   %edi,%ebx
    3321:	01 cb                	add    %ecx,%ebx
    3323:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    3327:	0f b7 ba e6 00 00 00 	movzwl 0xe6(%edx),%edi
    332e:	0f af cf             	imul   %edi,%ecx
    3331:	01 d9                	add    %ebx,%ecx
    3333:	0f b7 76 04          	movzwl 0x4(%esi),%esi
    3337:	0f b7 9a e8 00 00 00 	movzwl 0xe8(%edx),%ebx
    333e:	0f af f3             	imul   %ebx,%esi
    3341:	01 ce                	add    %ecx,%esi
    3343:	8d 5c 05 2a          	lea    0x2a(%ebp,%eax,1),%ebx
    3347:	0f b7 0b             	movzwl (%ebx),%ecx
    334a:	0f b7 82 ea 00 00 00 	movzwl 0xea(%edx),%eax
    3351:	0f af c8             	imul   %eax,%ecx
    3354:	01 f1                	add    %esi,%ecx
    3356:	0f b7 43 02          	movzwl 0x2(%ebx),%eax
    335a:	0f b7 b2 ec 00 00 00 	movzwl 0xec(%edx),%esi
    3361:	0f af c6             	imul   %esi,%eax
    3364:	01 c8                	add    %ecx,%eax
    3366:	0f b7 4b 04          	movzwl 0x4(%ebx),%ecx
    336a:	0f b7 9a ee 00 00 00 	movzwl 0xee(%edx),%ebx
    3371:	0f af cb             	imul   %ebx,%ecx
    3374:	01 c1                	add    %eax,%ecx
    3376:	8b 44 24 04          	mov    0x4(%esp),%eax
    337a:	03 44 24 2c          	add    0x2c(%esp),%eax
    337e:	89 44 24 04          	mov    %eax,0x4(%esp)
    3382:	8d 1c 40             	lea    (%eax,%eax,2),%ebx
    3385:	8d 04 1b             	lea    (%ebx,%ebx,1),%eax
    3388:	8d 74 05 00          	lea    0x0(%ebp,%eax,1),%esi
    338c:	0f b7 1e             	movzwl (%esi),%ebx
    338f:	0f b7 ba f0 00 00 00 	movzwl 0xf0(%edx),%edi
    3396:	0f af df             	imul   %edi,%ebx
    3399:	01 cb                	add    %ecx,%ebx
    339b:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    339f:	0f b7 ba f2 00 00 00 	movzwl 0xf2(%edx),%edi
    33a6:	0f af cf             	imul   %edi,%ecx
    33a9:	01 d9                	add    %ebx,%ecx
    33ab:	0f b7 5e 04          	movzwl 0x4(%esi),%ebx
    33af:	0f b7 b2 f4 00 00 00 	movzwl 0xf4(%edx),%esi
    33b6:	0f af de             	imul   %esi,%ebx
    33b9:	01 cb                	add    %ecx,%ebx
    33bb:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    33bf:	8d 74 49 03          	lea    0x3(%ecx,%ecx,2),%esi
    33c3:	8d 0c 36             	lea    (%esi,%esi,1),%ecx
    33c6:	01 e9                	add    %ebp,%ecx
    33c8:	0f b7 31             	movzwl (%ecx),%esi
    33cb:	0f b7 ba f6 00 00 00 	movzwl 0xf6(%edx),%edi
    33d2:	0f af f7             	imul   %edi,%esi
    33d5:	01 de                	add    %ebx,%esi
    33d7:	0f b7 59 02          	movzwl 0x2(%ecx),%ebx
    33db:	0f b7 ba f8 00 00 00 	movzwl 0xf8(%edx),%edi
    33e2:	0f af df             	imul   %edi,%ebx
    33e5:	01 f3                	add    %esi,%ebx
    33e7:	0f b7 49 04          	movzwl 0x4(%ecx),%ecx
    33eb:	0f b7 b2 fa 00 00 00 	movzwl 0xfa(%edx),%esi
    33f2:	0f af ce             	imul   %esi,%ecx
    33f5:	01 d9                	add    %ebx,%ecx
    33f7:	8d 74 05 0c          	lea    0xc(%ebp,%eax,1),%esi
    33fb:	0f b7 1e             	movzwl (%esi),%ebx
    33fe:	0f b7 ba fc 00 00 00 	movzwl 0xfc(%edx),%edi
    3405:	0f af df             	imul   %edi,%ebx
    3408:	01 cb                	add    %ecx,%ebx
    340a:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    340e:	0f b7 ba fe 00 00 00 	movzwl 0xfe(%edx),%edi
    3415:	0f af cf             	imul   %edi,%ecx
    3418:	01 cb                	add    %ecx,%ebx
    341a:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    341e:	0f b7 b2 00 01 00 00 	movzwl 0x100(%edx),%esi
    3425:	0f af ce             	imul   %esi,%ecx
    3428:	01 d9                	add    %ebx,%ecx
    342a:	8d 74 05 12          	lea    0x12(%ebp,%eax,1),%esi
    342e:	0f b7 1e             	movzwl (%esi),%ebx
    3431:	0f b7 ba 02 01 00 00 	movzwl 0x102(%edx),%edi
    3438:	0f af df             	imul   %edi,%ebx
    343b:	01 cb                	add    %ecx,%ebx
    343d:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    3441:	0f b7 ba 04 01 00 00 	movzwl 0x104(%edx),%edi
    3448:	0f af cf             	imul   %edi,%ecx
    344b:	01 cb                	add    %ecx,%ebx
    344d:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    3451:	0f b7 b2 06 01 00 00 	movzwl 0x106(%edx),%esi
    3458:	0f af ce             	imul   %esi,%ecx
    345b:	01 d9                	add    %ebx,%ecx
    345d:	8d 74 05 18          	lea    0x18(%ebp,%eax,1),%esi
    3461:	0f b7 1e             	movzwl (%esi),%ebx
    3464:	0f b7 ba 08 01 00 00 	movzwl 0x108(%edx),%edi
    346b:	0f af df             	imul   %edi,%ebx
    346e:	01 cb                	add    %ecx,%ebx
    3470:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    3474:	0f b7 ba 0a 01 00 00 	movzwl 0x10a(%edx),%edi
    347b:	0f af cf             	imul   %edi,%ecx
    347e:	01 cb                	add    %ecx,%ebx
    3480:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    3484:	0f b7 b2 0c 01 00 00 	movzwl 0x10c(%edx),%esi
    348b:	0f af ce             	imul   %esi,%ecx
    348e:	01 d9                	add    %ebx,%ecx
    3490:	8d 74 05 1e          	lea    0x1e(%ebp,%eax,1),%esi
    3494:	0f b7 1e             	movzwl (%esi),%ebx
    3497:	0f b7 ba 0e 01 00 00 	movzwl 0x10e(%edx),%edi
    349e:	0f af df             	imul   %edi,%ebx
    34a1:	01 cb                	add    %ecx,%ebx
    34a3:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    34a7:	0f b7 ba 10 01 00 00 	movzwl 0x110(%edx),%edi
    34ae:	0f af cf             	imul   %edi,%ecx
    34b1:	01 cb                	add    %ecx,%ebx
    34b3:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    34b7:	0f b7 b2 12 01 00 00 	movzwl 0x112(%edx),%esi
    34be:	0f af ce             	imul   %esi,%ecx
    34c1:	01 d9                	add    %ebx,%ecx
    34c3:	8d 74 05 24          	lea    0x24(%ebp,%eax,1),%esi
    34c7:	0f b7 1e             	movzwl (%esi),%ebx
    34ca:	0f b7 ba 14 01 00 00 	movzwl 0x114(%edx),%edi
    34d1:	0f af df             	imul   %edi,%ebx
    34d4:	01 cb                	add    %ecx,%ebx
    34d6:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    34da:	0f b7 ba 16 01 00 00 	movzwl 0x116(%edx),%edi
    34e1:	0f af cf             	imul   %edi,%ecx
    34e4:	01 d9                	add    %ebx,%ecx
    34e6:	0f b7 76 04          	movzwl 0x4(%esi),%esi
    34ea:	0f b7 9a 18 01 00 00 	movzwl 0x118(%edx),%ebx
    34f1:	0f af f3             	imul   %ebx,%esi
    34f4:	01 ce                	add    %ecx,%esi
    34f6:	8d 5c 05 2a          	lea    0x2a(%ebp,%eax,1),%ebx
    34fa:	0f b7 0b             	movzwl (%ebx),%ecx
    34fd:	0f b7 82 1a 01 00 00 	movzwl 0x11a(%edx),%eax
    3504:	0f af c8             	imul   %eax,%ecx
    3507:	01 f1                	add    %esi,%ecx
    3509:	0f b7 43 02          	movzwl 0x2(%ebx),%eax
    350d:	0f b7 b2 1c 01 00 00 	movzwl 0x11c(%edx),%esi
    3514:	0f af c6             	imul   %esi,%eax
    3517:	01 c8                	add    %ecx,%eax
    3519:	0f b7 4b 04          	movzwl 0x4(%ebx),%ecx
    351d:	0f b7 9a 1e 01 00 00 	movzwl 0x11e(%edx),%ebx
    3524:	0f af cb             	imul   %ebx,%ecx
    3527:	01 c1                	add    %eax,%ecx
    3529:	8b 44 24 04          	mov    0x4(%esp),%eax
    352d:	03 44 24 2c          	add    0x2c(%esp),%eax
    3531:	89 44 24 04          	mov    %eax,0x4(%esp)
    3535:	8d 1c 40             	lea    (%eax,%eax,2),%ebx
    3538:	8d 04 1b             	lea    (%ebx,%ebx,1),%eax
    353b:	8d 74 05 00          	lea    0x0(%ebp,%eax,1),%esi
    353f:	0f b7 1e             	movzwl (%esi),%ebx
    3542:	0f b7 ba 20 01 00 00 	movzwl 0x120(%edx),%edi
    3549:	0f af df             	imul   %edi,%ebx
    354c:	01 cb                	add    %ecx,%ebx
    354e:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    3552:	0f b7 ba 22 01 00 00 	movzwl 0x122(%edx),%edi
    3559:	0f af cf             	imul   %edi,%ecx
    355c:	01 d9                	add    %ebx,%ecx
    355e:	0f b7 5e 04          	movzwl 0x4(%esi),%ebx
    3562:	0f b7 b2 24 01 00 00 	movzwl 0x124(%edx),%esi
    3569:	0f af de             	imul   %esi,%ebx
    356c:	01 cb                	add    %ecx,%ebx
    356e:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    3572:	8d 74 49 03          	lea    0x3(%ecx,%ecx,2),%esi
    3576:	8d 0c 36             	lea    (%esi,%esi,1),%ecx
    3579:	01 e9                	add    %ebp,%ecx
    357b:	0f b7 31             	movzwl (%ecx),%esi
    357e:	0f b7 ba 26 01 00 00 	movzwl 0x126(%edx),%edi
    3585:	0f af f7             	imul   %edi,%esi
    3588:	01 de                	add    %ebx,%esi
    358a:	0f b7 59 02          	movzwl 0x2(%ecx),%ebx
    358e:	0f b7 ba 28 01 00 00 	movzwl 0x128(%edx),%edi
    3595:	0f af df             	imul   %edi,%ebx
    3598:	01 f3                	add    %esi,%ebx
    359a:	0f b7 49 04          	movzwl 0x4(%ecx),%ecx
    359e:	0f b7 b2 2a 01 00 00 	movzwl 0x12a(%edx),%esi
    35a5:	0f af ce             	imul   %esi,%ecx
    35a8:	01 d9                	add    %ebx,%ecx
    35aa:	8d 74 05 0c          	lea    0xc(%ebp,%eax,1),%esi
    35ae:	0f b7 1e             	movzwl (%esi),%ebx
    35b1:	0f b7 ba 2c 01 00 00 	movzwl 0x12c(%edx),%edi
    35b8:	0f af df             	imul   %edi,%ebx
    35bb:	01 cb                	add    %ecx,%ebx
    35bd:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    35c1:	0f b7 ba 2e 01 00 00 	movzwl 0x12e(%edx),%edi
    35c8:	0f af cf             	imul   %edi,%ecx
    35cb:	01 cb                	add    %ecx,%ebx
    35cd:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    35d1:	0f b7 b2 30 01 00 00 	movzwl 0x130(%edx),%esi
    35d8:	0f af ce             	imul   %esi,%ecx
    35db:	01 d9                	add    %ebx,%ecx
    35dd:	8d 74 05 12          	lea    0x12(%ebp,%eax,1),%esi
    35e1:	0f b7 1e             	movzwl (%esi),%ebx
    35e4:	0f b7 ba 32 01 00 00 	movzwl 0x132(%edx),%edi
    35eb:	0f af df             	imul   %edi,%ebx
    35ee:	01 cb                	add    %ecx,%ebx
    35f0:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    35f4:	0f b7 ba 34 01 00 00 	movzwl 0x134(%edx),%edi
    35fb:	0f af cf             	imul   %edi,%ecx
    35fe:	01 cb                	add    %ecx,%ebx
    3600:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    3604:	0f b7 b2 36 01 00 00 	movzwl 0x136(%edx),%esi
    360b:	0f af ce             	imul   %esi,%ecx
    360e:	01 d9                	add    %ebx,%ecx
    3610:	8d 74 05 18          	lea    0x18(%ebp,%eax,1),%esi
    3614:	0f b7 1e             	movzwl (%esi),%ebx
    3617:	0f b7 ba 38 01 00 00 	movzwl 0x138(%edx),%edi
    361e:	0f af df             	imul   %edi,%ebx
    3621:	01 cb                	add    %ecx,%ebx
    3623:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    3627:	0f b7 ba 3a 01 00 00 	movzwl 0x13a(%edx),%edi
    362e:	0f af cf             	imul   %edi,%ecx
    3631:	01 cb                	add    %ecx,%ebx
    3633:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    3637:	0f b7 b2 3c 01 00 00 	movzwl 0x13c(%edx),%esi
    363e:	0f af ce             	imul   %esi,%ecx
    3641:	01 d9                	add    %ebx,%ecx
    3643:	8d 74 05 1e          	lea    0x1e(%ebp,%eax,1),%esi
    3647:	0f b7 1e             	movzwl (%esi),%ebx
    364a:	0f b7 ba 3e 01 00 00 	movzwl 0x13e(%edx),%edi
    3651:	0f af df             	imul   %edi,%ebx
    3654:	01 cb                	add    %ecx,%ebx
    3656:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    365a:	0f b7 ba 40 01 00 00 	movzwl 0x140(%edx),%edi
    3661:	0f af cf             	imul   %edi,%ecx
    3664:	01 cb                	add    %ecx,%ebx
    3666:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    366a:	0f b7 b2 42 01 00 00 	movzwl 0x142(%edx),%esi
    3671:	0f af ce             	imul   %esi,%ecx
    3674:	01 d9                	add    %ebx,%ecx
    3676:	8d 74 05 24          	lea    0x24(%ebp,%eax,1),%esi
    367a:	0f b7 1e             	movzwl (%esi),%ebx
    367d:	0f b7 ba 44 01 00 00 	movzwl 0x144(%edx),%edi
    3684:	0f af df             	imul   %edi,%ebx
    3687:	01 cb                	add    %ecx,%ebx
    3689:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    368d:	0f b7 ba 46 01 00 00 	movzwl 0x146(%edx),%edi
    3694:	0f af cf             	imul   %edi,%ecx
    3697:	01 d9                	add    %ebx,%ecx
    3699:	0f b7 76 04          	movzwl 0x4(%esi),%esi
    369d:	0f b7 9a 48 01 00 00 	movzwl 0x148(%edx),%ebx
    36a4:	0f af f3             	imul   %ebx,%esi
    36a7:	01 ce                	add    %ecx,%esi
    36a9:	8d 5c 05 2a          	lea    0x2a(%ebp,%eax,1),%ebx
    36ad:	0f b7 0b             	movzwl (%ebx),%ecx
    36b0:	0f b7 82 4a 01 00 00 	movzwl 0x14a(%edx),%eax
    36b7:	0f af c8             	imul   %eax,%ecx
    36ba:	01 f1                	add    %esi,%ecx
    36bc:	0f b7 43 02          	movzwl 0x2(%ebx),%eax
    36c0:	0f b7 b2 4c 01 00 00 	movzwl 0x14c(%edx),%esi
    36c7:	0f af c6             	imul   %esi,%eax
    36ca:	01 c8                	add    %ecx,%eax
    36cc:	0f b7 4b 04          	movzwl 0x4(%ebx),%ecx
    36d0:	0f b7 9a 4e 01 00 00 	movzwl 0x14e(%edx),%ebx
    36d7:	0f af cb             	imul   %ebx,%ecx
    36da:	8d 1c 01             	lea    (%ecx,%eax,1),%ebx
    36dd:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    36e1:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    36e5:	03 4c 24 2c          	add    0x2c(%esp),%ecx
    36e9:	89 ce                	mov    %ecx,%esi
    36eb:	8d 1c 49             	lea    (%ecx,%ecx,2),%ebx
    36ee:	8d 04 1b             	lea    (%ebx,%ebx,1),%eax
    36f1:	8d 7c 05 00          	lea    0x0(%ebp,%eax,1),%edi
    36f5:	0f b7 1f             	movzwl (%edi),%ebx
    36f8:	0f b7 8a 50 01 00 00 	movzwl 0x150(%edx),%ecx
    36ff:	0f af d9             	imul   %ecx,%ebx
    3702:	8b 4c 24 08          	mov    0x8(%esp),%ecx
    3706:	01 cb                	add    %ecx,%ebx
    3708:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    370c:	0f b7 4f 02          	movzwl 0x2(%edi),%ecx
    3710:	0f b7 9a 52 01 00 00 	movzwl 0x152(%edx),%ebx
    3717:	0f af cb             	imul   %ebx,%ecx
    371a:	8b 5c 24 04          	mov    0x4(%esp),%ebx
    371e:	01 d9                	add    %ebx,%ecx
    3720:	0f b7 5f 04          	movzwl 0x4(%edi),%ebx
    3724:	0f b7 ba 54 01 00 00 	movzwl 0x154(%edx),%edi
    372b:	0f af df             	imul   %edi,%ebx
    372e:	01 cb                	add    %ecx,%ebx
    3730:	8d 74 76 03          	lea    0x3(%esi,%esi,2),%esi
    3734:	8d 0c 36             	lea    (%esi,%esi,1),%ecx
    3737:	01 e9                	add    %ebp,%ecx
    3739:	0f b7 31             	movzwl (%ecx),%esi
    373c:	0f b7 ba 56 01 00 00 	movzwl 0x156(%edx),%edi
    3743:	0f af f7             	imul   %edi,%esi
    3746:	01 de                	add    %ebx,%esi
    3748:	0f b7 59 02          	movzwl 0x2(%ecx),%ebx
    374c:	0f b7 ba 58 01 00 00 	movzwl 0x158(%edx),%edi
    3753:	0f af df             	imul   %edi,%ebx
    3756:	01 f3                	add    %esi,%ebx
    3758:	0f b7 49 04          	movzwl 0x4(%ecx),%ecx
    375c:	0f b7 b2 5a 01 00 00 	movzwl 0x15a(%edx),%esi
    3763:	0f af ce             	imul   %esi,%ecx
    3766:	01 d9                	add    %ebx,%ecx
    3768:	8d 74 05 0c          	lea    0xc(%ebp,%eax,1),%esi
    376c:	0f b7 1e             	movzwl (%esi),%ebx
    376f:	0f b7 ba 5c 01 00 00 	movzwl 0x15c(%edx),%edi
    3776:	0f af df             	imul   %edi,%ebx
    3779:	01 cb                	add    %ecx,%ebx
    377b:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    377f:	0f b7 ba 5e 01 00 00 	movzwl 0x15e(%edx),%edi
    3786:	0f af cf             	imul   %edi,%ecx
    3789:	01 cb                	add    %ecx,%ebx
    378b:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    378f:	0f b7 b2 60 01 00 00 	movzwl 0x160(%edx),%esi
    3796:	0f af ce             	imul   %esi,%ecx
    3799:	01 d9                	add    %ebx,%ecx
    379b:	8d 74 05 12          	lea    0x12(%ebp,%eax,1),%esi
    379f:	0f b7 1e             	movzwl (%esi),%ebx
    37a2:	0f b7 ba 62 01 00 00 	movzwl 0x162(%edx),%edi
    37a9:	0f af df             	imul   %edi,%ebx
    37ac:	01 cb                	add    %ecx,%ebx
    37ae:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    37b2:	0f b7 ba 64 01 00 00 	movzwl 0x164(%edx),%edi
    37b9:	0f af cf             	imul   %edi,%ecx
    37bc:	01 cb                	add    %ecx,%ebx
    37be:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    37c2:	0f b7 b2 66 01 00 00 	movzwl 0x166(%edx),%esi
    37c9:	0f af ce             	imul   %esi,%ecx
    37cc:	01 d9                	add    %ebx,%ecx
    37ce:	8d 74 05 18          	lea    0x18(%ebp,%eax,1),%esi
    37d2:	0f b7 1e             	movzwl (%esi),%ebx
    37d5:	0f b7 ba 68 01 00 00 	movzwl 0x168(%edx),%edi
    37dc:	0f af df             	imul   %edi,%ebx
    37df:	01 cb                	add    %ecx,%ebx
    37e1:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    37e5:	0f b7 ba 6a 01 00 00 	movzwl 0x16a(%edx),%edi
    37ec:	0f af cf             	imul   %edi,%ecx
    37ef:	01 cb                	add    %ecx,%ebx
    37f1:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    37f5:	0f b7 b2 6c 01 00 00 	movzwl 0x16c(%edx),%esi
    37fc:	0f af ce             	imul   %esi,%ecx
    37ff:	01 d9                	add    %ebx,%ecx
    3801:	8d 74 05 1e          	lea    0x1e(%ebp,%eax,1),%esi
    3805:	0f b7 1e             	movzwl (%esi),%ebx
    3808:	0f b7 ba 6e 01 00 00 	movzwl 0x16e(%edx),%edi
    380f:	0f af df             	imul   %edi,%ebx
    3812:	01 cb                	add    %ecx,%ebx
    3814:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    3818:	0f b7 ba 70 01 00 00 	movzwl 0x170(%edx),%edi
    381f:	0f af cf             	imul   %edi,%ecx
    3822:	01 cb                	add    %ecx,%ebx
    3824:	0f b7 4e 04          	movzwl 0x4(%esi),%ecx
    3828:	0f b7 b2 72 01 00 00 	movzwl 0x172(%edx),%esi
    382f:	0f af ce             	imul   %esi,%ecx
    3832:	01 d9                	add    %ebx,%ecx
    3834:	8d 74 05 24          	lea    0x24(%ebp,%eax,1),%esi
    3838:	0f b7 1e             	movzwl (%esi),%ebx
    383b:	0f b7 ba 74 01 00 00 	movzwl 0x174(%edx),%edi
    3842:	0f af df             	imul   %edi,%ebx
    3845:	01 cb                	add    %ecx,%ebx
    3847:	0f b7 4e 02          	movzwl 0x2(%esi),%ecx
    384b:	0f b7 ba 76 01 00 00 	movzwl 0x176(%edx),%edi
    3852:	0f af cf             	imul   %edi,%ecx
    3855:	01 d9                	add    %ebx,%ecx
    3857:	0f b7 76 04          	movzwl 0x4(%esi),%esi
    385b:	0f b7 9a 78 01 00 00 	movzwl 0x178(%edx),%ebx
    3862:	0f af f3             	imul   %ebx,%esi
    3865:	01 ce                	add    %ecx,%esi
    3867:	8d 5c 05 2a          	lea    0x2a(%ebp,%eax,1),%ebx
    386b:	0f b7 0b             	movzwl (%ebx),%ecx
    386e:	0f b7 82 7a 01 00 00 	movzwl 0x17a(%edx),%eax
    3875:	0f af c8             	imul   %eax,%ecx
    3878:	01 f1                	add    %esi,%ecx
    387a:	0f b7 43 02          	movzwl 0x2(%ebx),%eax
    387e:	0f b7 b2 7c 01 00 00 	movzwl 0x17c(%edx),%esi
    3885:	0f af c6             	imul   %esi,%eax
    3888:	01 c8                	add    %ecx,%eax
    388a:	0f b7 4b 04          	movzwl 0x4(%ebx),%ecx
    388e:	0f b7 9a 7e 01 00 00 	movzwl 0x17e(%edx),%ebx
    3895:	0f af cb             	imul   %ebx,%ecx
    3898:	01 c1                	add    %eax,%ecx
    389a:	8b 44 24 38          	mov    0x38(%esp),%eax
    389e:	8b 34 24             	mov    (%esp),%esi
    38a1:	89 0c b0             	mov    %ecx,(%eax,%esi,4)
    38a4:	66 83 44 24 14 01    	addw   $0x1,0x14(%esp)
    38aa:	0f bf 44 24 14       	movswl 0x14(%esp),%eax
    38af:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    38b3:	39 f8                	cmp    %edi,%eax
    38b5:	0f 8c 04 f3 ff ff    	jl     2bbf <forth_conv+0x2a>
    38bb:	0f b7 5c 24 16       	movzwl 0x16(%esp),%ebx
    38c0:	8b 7c 24 2c          	mov    0x2c(%esp),%edi
    38c4:	01 7c 24 10          	add    %edi,0x10(%esp)
    38c8:	83 c3 01             	add    $0x1,%ebx
    38cb:	0f bf c3             	movswl %bx,%eax
    38ce:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    38d2:	39 f8                	cmp    %edi,%eax
    38d4:	7d 12                	jge    38e8 <forth_conv+0xd53>
    38d6:	66 c7 44 24 14 00 00 	movw   $0x0,0x14(%esp)
    38dd:	66 89 5c 24 16       	mov    %bx,0x16(%esp)
    38e2:	8b 6c 24 30          	mov    0x30(%esp),%ebp
    38e6:	eb c2                	jmp    38aa <forth_conv+0xd15>
    38e8:	83 c4 18             	add    $0x18,%esp
    38eb:	5b                   	pop    %ebx
    38ec:	5e                   	pop    %esi
    38ed:	5f                   	pop    %edi
    38ee:	5d                   	pop    %ebp
    38ef:	c3                   	ret

000038f0 <naive_average_pooling>:
    38f0:	55                   	push   %ebp
    38f1:	57                   	push   %edi
    38f2:	56                   	push   %esi
    38f3:	53                   	push   %ebx
    38f4:	83 ec 04             	sub    $0x4,%esp
    38f7:	bf 00 00 00 00       	mov    $0x0,%edi
    38fc:	e9 a0 00 00 00       	jmp    39a1 <naive_average_pooling+0xb1>
    3901:	8d 14 7b             	lea    (%ebx,%edi,2),%edx
    3904:	0f af 54 24 18       	imul   0x18(%esp),%edx
    3909:	8d 2c 71             	lea    (%ecx,%esi,2),%ebp
    390c:	01 ea                	add    %ebp,%edx
    390e:	8d 2c 52             	lea    (%edx,%edx,2),%ebp
    3911:	8d 54 2d 00          	lea    0x0(%ebp,%ebp,1),%edx
    3915:	03 54 24 1c          	add    0x1c(%esp),%edx
    3919:	0f b7 2a             	movzwl (%edx),%ebp
    391c:	66 01 28             	add    %bp,(%eax)
    391f:	0f b7 6a 02          	movzwl 0x2(%edx),%ebp
    3923:	66 01 68 02          	add    %bp,0x2(%eax)
    3927:	0f b7 52 04          	movzwl 0x4(%edx),%edx
    392b:	66 01 50 04          	add    %dx,0x4(%eax)
    392f:	83 c1 01             	add    $0x1,%ecx
    3932:	83 f9 01             	cmp    $0x1,%ecx
    3935:	7e ca                	jle    3901 <naive_average_pooling+0x11>
    3937:	83 c3 01             	add    $0x1,%ebx
    393a:	83 fb 01             	cmp    $0x1,%ebx
    393d:	7f 07                	jg     3946 <naive_average_pooling+0x56>
    393f:	b9 00 00 00 00       	mov    $0x0,%ecx
    3944:	eb ec                	jmp    3932 <naive_average_pooling+0x42>
    3946:	8b 14 24             	mov    (%esp),%edx
    3949:	0f b7 08             	movzwl (%eax),%ecx
    394c:	66 c1 e9 02          	shr    $0x2,%cx
    3950:	66 89 08             	mov    %cx,(%eax)
    3953:	0f b7 48 02          	movzwl 0x2(%eax),%ecx
    3957:	66 c1 e9 02          	shr    $0x2,%cx
    395b:	66 89 48 02          	mov    %cx,0x2(%eax)
    395f:	0f b7 48 04          	movzwl 0x4(%eax),%ecx
    3963:	66 c1 e9 02          	shr    $0x2,%cx
    3967:	66 89 48 04          	mov    %cx,0x4(%eax)
    396b:	83 c6 01             	add    $0x1,%esi
    396e:	39 f2                	cmp    %esi,%edx
    3970:	7e 2c                	jle    399e <naive_average_pooling+0xae>
    3972:	89 d0                	mov    %edx,%eax
    3974:	0f af c7             	imul   %edi,%eax
    3977:	01 f0                	add    %esi,%eax
    3979:	8d 0c 40             	lea    (%eax,%eax,2),%ecx
    397c:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
    397f:	03 44 24 20          	add    0x20(%esp),%eax
    3983:	66 c7 00 00 00       	movw   $0x0,(%eax)
    3988:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
    398e:	66 c7 40 04 00 00    	movw   $0x0,0x4(%eax)
    3994:	bb 00 00 00 00       	mov    $0x0,%ebx
    3999:	89 14 24             	mov    %edx,(%esp)
    399c:	eb 9c                	jmp    393a <naive_average_pooling+0x4a>
    399e:	83 c7 01             	add    $0x1,%edi
    39a1:	8b 44 24 18          	mov    0x18(%esp),%eax
    39a5:	c1 e8 1f             	shr    $0x1f,%eax
    39a8:	03 44 24 18          	add    0x18(%esp),%eax
    39ac:	d1 f8                	sar    %eax
    39ae:	89 c2                	mov    %eax,%edx
    39b0:	39 f8                	cmp    %edi,%eax
    39b2:	7e 07                	jle    39bb <naive_average_pooling+0xcb>
    39b4:	be 00 00 00 00       	mov    $0x0,%esi
    39b9:	eb b3                	jmp    396e <naive_average_pooling+0x7e>
    39bb:	83 c4 04             	add    $0x4,%esp
    39be:	5b                   	pop    %ebx
    39bf:	5e                   	pop    %esi
    39c0:	5f                   	pop    %edi
    39c1:	5d                   	pop    %ebp
    39c2:	c3                   	ret

000039c3 <average_pooling>:
    39c3:	ff 74 24 0c          	push   0xc(%esp)
    39c7:	ff 74 24 0c          	push   0xc(%esp)
    39cb:	ff 74 24 0c          	push   0xc(%esp)
    39cf:	e8 1c ff ff ff       	call   38f0 <naive_average_pooling>
    39d4:	83 c4 0c             	add    $0xc,%esp
    39d7:	c3                   	ret

000039d8 <convolution>:
    39d8:	ff 74 24 10          	push   0x10(%esp)
    39dc:	ff 74 24 10          	push   0x10(%esp)
    39e0:	ff 74 24 10          	push   0x10(%esp)
    39e4:	ff 74 24 10          	push   0x10(%esp)
    39e8:	e8 a8 f1 ff ff       	call   2b95 <forth_conv>
    39ed:	83 c4 10             	add    $0x10,%esp
    39f0:	c3                   	ret

000039f1 <register_conv_functions>:
    39f1:	53                   	push   %ebx
    39f2:	83 ec 10             	sub    $0x10,%esp
    39f5:	e8 e6 d7 ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    39fa:	81 c3 fa 45 00 00    	add    $0x45fa,%ebx
    3a00:	8d 83 0c 02 00 00    	lea    0x20c(%ebx),%eax
    3a06:	50                   	push   %eax
    3a07:	8d 83 bd a9 ff ff    	lea    -0x5643(%ebx),%eax
    3a0d:	50                   	push   %eax
    3a0e:	e8 bf e0 ff ff       	call   1ad2 <add_conv_function>
    3a13:	83 c4 08             	add    $0x8,%esp
    3a16:	8d 83 cc 01 00 00    	lea    0x1cc(%ebx),%eax
    3a1c:	50                   	push   %eax
    3a1d:	8d 83 b4 aa ff ff    	lea    -0x554c(%ebx),%eax
    3a23:	50                   	push   %eax
    3a24:	e8 a9 e0 ff ff       	call   1ad2 <add_conv_function>
    3a29:	83 c4 08             	add    $0x8,%esp
    3a2c:	8d 83 8c 01 00 00    	lea    0x18c(%ebx),%eax
    3a32:	50                   	push   %eax
    3a33:	8d 83 a1 ab ff ff    	lea    -0x545f(%ebx),%eax
    3a39:	50                   	push   %eax
    3a3a:	e8 93 e0 ff ff       	call   1ad2 <add_conv_function>
    3a3f:	83 c4 18             	add    $0x18,%esp
    3a42:	5b                   	pop    %ebx
    3a43:	c3                   	ret

00003a44 <first_average_pooling>:
    3a44:	55                   	push   %ebp
    3a45:	57                   	push   %edi
    3a46:	56                   	push   %esi
    3a47:	53                   	push   %ebx
    3a48:	83 ec 04             	sub    $0x4,%esp
    3a4b:	bf 00 00 00 00       	mov    $0x0,%edi
    3a50:	e9 a0 00 00 00       	jmp    3af5 <first_average_pooling+0xb1>
    3a55:	8d 14 7b             	lea    (%ebx,%edi,2),%edx
    3a58:	0f af 54 24 18       	imul   0x18(%esp),%edx
    3a5d:	8d 2c 71             	lea    (%ecx,%esi,2),%ebp
    3a60:	01 ea                	add    %ebp,%edx
    3a62:	8d 2c 52             	lea    (%edx,%edx,2),%ebp
    3a65:	8d 54 2d 00          	lea    0x0(%ebp,%ebp,1),%edx
    3a69:	03 54 24 1c          	add    0x1c(%esp),%edx
    3a6d:	0f b7 2a             	movzwl (%edx),%ebp
    3a70:	66 01 28             	add    %bp,(%eax)
    3a73:	0f b7 6a 02          	movzwl 0x2(%edx),%ebp
    3a77:	66 01 68 02          	add    %bp,0x2(%eax)
    3a7b:	0f b7 52 04          	movzwl 0x4(%edx),%edx
    3a7f:	66 01 50 04          	add    %dx,0x4(%eax)
    3a83:	83 c1 01             	add    $0x1,%ecx
    3a86:	83 f9 01             	cmp    $0x1,%ecx
    3a89:	7e ca                	jle    3a55 <first_average_pooling+0x11>
    3a8b:	83 c3 01             	add    $0x1,%ebx
    3a8e:	83 fb 01             	cmp    $0x1,%ebx
    3a91:	7f 07                	jg     3a9a <first_average_pooling+0x56>
    3a93:	b9 00 00 00 00       	mov    $0x0,%ecx
    3a98:	eb ec                	jmp    3a86 <first_average_pooling+0x42>
    3a9a:	8b 14 24             	mov    (%esp),%edx
    3a9d:	0f b7 08             	movzwl (%eax),%ecx
    3aa0:	66 c1 e9 02          	shr    $0x2,%cx
    3aa4:	66 89 08             	mov    %cx,(%eax)
    3aa7:	0f b7 48 02          	movzwl 0x2(%eax),%ecx
    3aab:	66 c1 e9 02          	shr    $0x2,%cx
    3aaf:	66 89 48 02          	mov    %cx,0x2(%eax)
    3ab3:	0f b7 48 04          	movzwl 0x4(%eax),%ecx
    3ab7:	66 c1 e9 02          	shr    $0x2,%cx
    3abb:	66 89 48 04          	mov    %cx,0x4(%eax)
    3abf:	83 c6 01             	add    $0x1,%esi
    3ac2:	39 f2                	cmp    %esi,%edx
    3ac4:	7e 2c                	jle    3af2 <first_average_pooling+0xae>
    3ac6:	89 d0                	mov    %edx,%eax
    3ac8:	0f af c7             	imul   %edi,%eax
    3acb:	01 f0                	add    %esi,%eax
    3acd:	8d 0c 40             	lea    (%eax,%eax,2),%ecx
    3ad0:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
    3ad3:	03 44 24 20          	add    0x20(%esp),%eax
    3ad7:	66 c7 00 00 00       	movw   $0x0,(%eax)
    3adc:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
    3ae2:	66 c7 40 04 00 00    	movw   $0x0,0x4(%eax)
    3ae8:	bb 00 00 00 00       	mov    $0x0,%ebx
    3aed:	89 14 24             	mov    %edx,(%esp)
    3af0:	eb 9c                	jmp    3a8e <first_average_pooling+0x4a>
    3af2:	83 c7 01             	add    $0x1,%edi
    3af5:	8b 44 24 18          	mov    0x18(%esp),%eax
    3af9:	c1 e8 1f             	shr    $0x1f,%eax
    3afc:	03 44 24 18          	add    0x18(%esp),%eax
    3b00:	d1 f8                	sar    %eax
    3b02:	89 c2                	mov    %eax,%edx
    3b04:	39 f8                	cmp    %edi,%eax
    3b06:	7e 07                	jle    3b0f <first_average_pooling+0xcb>
    3b08:	be 00 00 00 00       	mov    $0x0,%esi
    3b0d:	eb b3                	jmp    3ac2 <first_average_pooling+0x7e>
    3b0f:	83 c4 04             	add    $0x4,%esp
    3b12:	5b                   	pop    %ebx
    3b13:	5e                   	pop    %esi
    3b14:	5f                   	pop    %edi
    3b15:	5d                   	pop    %ebp
    3b16:	c3                   	ret

00003b17 <register_average_pooling_functions>:
    3b17:	53                   	push   %ebx
    3b18:	83 ec 10             	sub    $0x10,%esp
    3b1b:	e8 c0 d6 ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    3b20:	81 c3 d4 44 00 00    	add    $0x44d4,%ebx
    3b26:	8d 83 0c 01 00 00    	lea    0x10c(%ebx),%eax
    3b2c:	50                   	push   %eax
    3b2d:	8d 83 fc b8 ff ff    	lea    -0x4704(%ebx),%eax
    3b33:	50                   	push   %eax
    3b34:	e8 db df ff ff       	call   1b14 <add_average_pooling_function>
    3b39:	83 c4 08             	add    $0x8,%esp
    3b3c:	8d 83 8c 00 00 00    	lea    0x8c(%ebx),%eax
    3b42:	50                   	push   %eax
    3b43:	8d 83 cf b9 ff ff    	lea    -0x4631(%ebx),%eax
    3b49:	50                   	push   %eax
    3b4a:	e8 c5 df ff ff       	call   1b14 <add_average_pooling_function>
    3b4f:	83 c4 18             	add    $0x18,%esp
    3b52:	5b                   	pop    %ebx
    3b53:	c3                   	ret

00003b54 <add_sample>:
    3b54:	53                   	push   %ebx
    3b55:	e8 86 d6 ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    3b5a:	81 c3 9a 44 00 00    	add    $0x449a,%ebx
    3b60:	dd 44 24 08          	fldl   0x8(%esp)
    3b64:	8b 93 f0 2e 84 03    	mov    0x3842ef0(%ebx),%edx
    3b6a:	8b 83 68 02 00 00    	mov    0x268(%ebx),%eax
    3b70:	39 c2                	cmp    %eax,%edx
    3b72:	7d 16                	jge    3b8a <add_sample+0x36>
    3b74:	8b 83 f4 2e 84 03    	mov    0x3842ef4(%ebx),%eax
    3b7a:	dd 1c d0             	fstpl  (%eax,%edx,8)
    3b7d:	89 d0                	mov    %edx,%eax
    3b7f:	83 c2 01             	add    $0x1,%edx
    3b82:	89 93 f0 2e 84 03    	mov    %edx,0x3842ef0(%ebx)
    3b88:	eb 28                	jmp    3bb2 <add_sample+0x5e>
    3b8a:	8b 8b f4 2e 84 03    	mov    0x3842ef4(%ebx),%ecx
    3b90:	dd 44 c1 f8          	fldl   -0x8(%ecx,%eax,8)
    3b94:	df f1                	fcomip %st(1),%st
    3b96:	76 08                	jbe    3ba0 <add_sample+0x4c>
    3b98:	83 e8 01             	sub    $0x1,%eax
    3b9b:	dd 1c c1             	fstpl  (%ecx,%eax,8)
    3b9e:	eb df                	jmp    3b7f <add_sample+0x2b>
    3ba0:	dd d8                	fstp   %st(0)
    3ba2:	b8 00 00 00 00       	mov    $0x0,%eax
    3ba7:	eb d6                	jmp    3b7f <add_sample+0x2b>
    3ba9:	d9 c9                	fxch   %st(1)
    3bab:	dd 19                	fstpl  (%ecx)
    3bad:	dd 1a                	fstpl  (%edx)
    3baf:	83 e8 01             	sub    $0x1,%eax
    3bb2:	85 c0                	test   %eax,%eax
    3bb4:	7e 1b                	jle    3bd1 <add_sample+0x7d>
    3bb6:	8b 93 f4 2e 84 03    	mov    0x3842ef4(%ebx),%edx
    3bbc:	8d 4c c2 f8          	lea    -0x8(%edx,%eax,8),%ecx
    3bc0:	dd 01                	fldl   (%ecx)
    3bc2:	8d 14 c2             	lea    (%edx,%eax,8),%edx
    3bc5:	dd 02                	fldl   (%edx)
    3bc7:	d9 c9                	fxch   %st(1)
    3bc9:	db f1                	fcomi  %st(1),%st
    3bcb:	77 dc                	ja     3ba9 <add_sample+0x55>
    3bcd:	dd d8                	fstp   %st(0)
    3bcf:	dd d8                	fstp   %st(0)
    3bd1:	5b                   	pop    %ebx
    3bd2:	c3                   	ret

00003bd3 <has_converged>:
    3bd3:	e8 cd ed ff ff       	call   29a5 <__x86.get_pc_thunk.ax>
    3bd8:	05 1c 44 00 00       	add    $0x441c,%eax
    3bdd:	8b 90 68 02 00 00    	mov    0x268(%eax),%edx
    3be3:	39 90 f0 2e 84 03    	cmp    %edx,0x3842ef0(%eax)
    3be9:	7c 22                	jl     3c0d <has_converged+0x3a>
    3beb:	d9 e8                	fld1
    3bed:	dc 80 5c 02 00 00    	faddl  0x25c(%eax)
    3bf3:	8b 80 f4 2e 84 03    	mov    0x3842ef4(%eax),%eax
    3bf9:	dc 08                	fmull  (%eax)
    3bfb:	dd 44 d0 f8          	fldl   -0x8(%eax,%edx,8)
    3bff:	d9 c9                	fxch   %st(1)
    3c01:	df f1                	fcomip %st(1),%st
    3c03:	dd d8                	fstp   %st(0)
    3c05:	73 0c                	jae    3c13 <has_converged+0x40>
    3c07:	b8 00 00 00 00       	mov    $0x0,%eax
    3c0c:	c3                   	ret
    3c0d:	b8 00 00 00 00       	mov    $0x0,%eax
    3c12:	c3                   	ret
    3c13:	b8 01 00 00 00       	mov    $0x1,%eax
    3c18:	c3                   	ret

00003c19 <init_sampler>:
    3c19:	53                   	push   %ebx
    3c1a:	83 ec 08             	sub    $0x8,%esp
    3c1d:	e8 be d5 ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    3c22:	81 c3 d2 43 00 00    	add    $0x43d2,%ebx
    3c28:	8b 83 f4 2e 84 03    	mov    0x3842ef4(%ebx),%eax
    3c2e:	85 c0                	test   %eax,%eax
    3c30:	74 0c                	je     3c3e <init_sampler+0x25>
    3c32:	83 ec 0c             	sub    $0xc,%esp
    3c35:	50                   	push   %eax
    3c36:	e8 45 d4 ff ff       	call   1080 <free@plt>
    3c3b:	83 c4 10             	add    $0x10,%esp
    3c3e:	83 ec 08             	sub    $0x8,%esp
    3c41:	6a 08                	push   $0x8
    3c43:	ff b3 68 02 00 00    	push   0x268(%ebx)
    3c49:	e8 52 d5 ff ff       	call   11a0 <calloc@plt>
    3c4e:	89 83 f4 2e 84 03    	mov    %eax,0x3842ef4(%ebx)
    3c54:	c7 83 f0 2e 84 03 00 	movl   $0x0,0x3842ef0(%ebx)
    3c5b:	00 00 00 
    3c5e:	83 c4 18             	add    $0x18,%esp
    3c61:	5b                   	pop    %ebx
    3c62:	c3                   	ret

00003c63 <clear>:
    3c63:	57                   	push   %edi
    3c64:	56                   	push   %esi
    3c65:	53                   	push   %ebx
    3c66:	e8 75 d5 ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    3c6b:	81 c3 89 43 00 00    	add    $0x4389,%ebx
    3c71:	8b b3 ec 2e 84 03    	mov    0x3842eec(%ebx),%esi
    3c77:	8b bb 54 02 00 00    	mov    0x254(%ebx),%edi
    3c7d:	83 bb f8 2e 84 03 00 	cmpl   $0x0,0x3842ef8(%ebx)
    3c84:	74 13                	je     3c99 <clear+0x36>
    3c86:	8b 83 f8 2e 84 03    	mov    0x3842ef8(%ebx),%eax
    3c8c:	8b 8b 58 02 00 00    	mov    0x258(%ebx),%ecx
    3c92:	83 e1 fc             	and    $0xfffffffc,%ecx
    3c95:	01 c1                	add    %eax,%ecx
    3c97:	eb 48                	jmp    3ce1 <clear+0x7e>
    3c99:	83 ec 0c             	sub    $0xc,%esp
    3c9c:	ff b3 58 02 00 00    	push   0x258(%ebx)
    3ca2:	e8 49 d4 ff ff       	call   10f0 <malloc@plt>
    3ca7:	89 83 f8 2e 84 03    	mov    %eax,0x3842ef8(%ebx)
    3cad:	83 c4 10             	add    $0x10,%esp
    3cb0:	85 c0                	test   %eax,%eax
    3cb2:	75 d2                	jne    3c86 <clear+0x23>
    3cb4:	8b 83 e4 ff ff ff    	mov    -0x1c(%ebx),%eax
    3cba:	ff 30                	push   (%eax)
    3cbc:	6a 3e                	push   $0x3e
    3cbe:	6a 01                	push   $0x1
    3cc0:	8d 83 fc d5 ff ff    	lea    -0x2a04(%ebx),%eax
    3cc6:	50                   	push   %eax
    3cc7:	e8 14 d4 ff ff       	call   10e0 <fwrite@plt>
    3ccc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3cd3:	e8 48 d4 ff ff       	call   1120 <exit@plt>
    3cd8:	03 30                	add    (%eax),%esi
    3cda:	89 fa                	mov    %edi,%edx
    3cdc:	83 e2 fc             	and    $0xfffffffc,%edx
    3cdf:	01 d0                	add    %edx,%eax
    3ce1:	39 c8                	cmp    %ecx,%eax
    3ce3:	72 f3                	jb     3cd8 <clear+0x75>
    3ce5:	89 b3 ec 2e 84 03    	mov    %esi,0x3842eec(%ebx)
    3ceb:	5b                   	pop    %ebx
    3cec:	5e                   	pop    %esi
    3ced:	5f                   	pop    %edi
    3cee:	c3                   	ret

00003cef <fcyc>:
    3cef:	57                   	push   %edi
    3cf0:	56                   	push   %esi
    3cf1:	53                   	push   %ebx
    3cf2:	83 ec 10             	sub    $0x10,%esp
    3cf5:	e8 e6 d4 ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    3cfa:	81 c3 fa 42 00 00    	add    $0x42fa,%ebx
    3d00:	8b 7c 24 20          	mov    0x20(%esp),%edi
    3d04:	8b 74 24 24          	mov    0x24(%esp),%esi
    3d08:	e8 0c ff ff ff       	call   3c19 <init_sampler>
    3d0d:	83 bb 00 2f 84 03 00 	cmpl   $0x0,0x3842f00(%ebx)
    3d14:	74 76                	je     3d8c <fcyc+0x9d>
    3d16:	eb 32                	jmp    3d4a <fcyc+0x5b>
    3d18:	e8 c9 04 00 00       	call   41e6 <start_comp_counter>
    3d1d:	83 ec 0c             	sub    $0xc,%esp
    3d20:	56                   	push   %esi
    3d21:	ff d7                	call   *%edi
    3d23:	e8 2b 05 00 00       	call   4253 <get_comp_counter>
    3d28:	dd 1c 24             	fstpl  (%esp)
    3d2b:	e8 24 fe ff ff       	call   3b54 <add_sample>
    3d30:	e8 9e fe ff ff       	call   3bd3 <has_converged>
    3d35:	83 c4 10             	add    $0x10,%esp
    3d38:	85 c0                	test   %eax,%eax
    3d3a:	75 60                	jne    3d9c <fcyc+0xad>
    3d3c:	8b 83 64 02 00 00    	mov    0x264(%ebx),%eax
    3d42:	39 83 f0 2e 84 03    	cmp    %eax,0x3842ef0(%ebx)
    3d48:	7d 52                	jge    3d9c <fcyc+0xad>
    3d4a:	83 bb fc 2e 84 03 00 	cmpl   $0x0,0x3842efc(%ebx)
    3d51:	74 c5                	je     3d18 <fcyc+0x29>
    3d53:	e8 0b ff ff ff       	call   3c63 <clear>
    3d58:	eb be                	jmp    3d18 <fcyc+0x29>
    3d5a:	e8 1b 02 00 00       	call   3f7a <start_counter>
    3d5f:	83 ec 0c             	sub    $0xc,%esp
    3d62:	56                   	push   %esi
    3d63:	ff d7                	call   *%edi
    3d65:	e8 31 02 00 00       	call   3f9b <get_counter>
    3d6a:	dd 1c 24             	fstpl  (%esp)
    3d6d:	e8 e2 fd ff ff       	call   3b54 <add_sample>
    3d72:	e8 5c fe ff ff       	call   3bd3 <has_converged>
    3d77:	83 c4 10             	add    $0x10,%esp
    3d7a:	85 c0                	test   %eax,%eax
    3d7c:	75 1e                	jne    3d9c <fcyc+0xad>
    3d7e:	8b 83 64 02 00 00    	mov    0x264(%ebx),%eax
    3d84:	39 83 f0 2e 84 03    	cmp    %eax,0x3842ef0(%ebx)
    3d8a:	7d 10                	jge    3d9c <fcyc+0xad>
    3d8c:	83 bb fc 2e 84 03 00 	cmpl   $0x0,0x3842efc(%ebx)
    3d93:	74 c5                	je     3d5a <fcyc+0x6b>
    3d95:	e8 c9 fe ff ff       	call   3c63 <clear>
    3d9a:	eb be                	jmp    3d5a <fcyc+0x6b>
    3d9c:	8b 83 f4 2e 84 03    	mov    0x3842ef4(%ebx),%eax
    3da2:	dd 00                	fldl   (%eax)
    3da4:	dd 5c 24 08          	fstpl  0x8(%esp)
    3da8:	83 ec 0c             	sub    $0xc,%esp
    3dab:	50                   	push   %eax
    3dac:	e8 cf d2 ff ff       	call   1080 <free@plt>
    3db1:	c7 83 f4 2e 84 03 00 	movl   $0x0,0x3842ef4(%ebx)
    3db8:	00 00 00 
    3dbb:	dd 44 24 18          	fldl   0x18(%esp)
    3dbf:	83 c4 20             	add    $0x20,%esp
    3dc2:	5b                   	pop    %ebx
    3dc3:	5e                   	pop    %esi
    3dc4:	5f                   	pop    %edi
    3dc5:	c3                   	ret

00003dc6 <fcyc_v>:
    3dc6:	57                   	push   %edi
    3dc7:	56                   	push   %esi
    3dc8:	53                   	push   %ebx
    3dc9:	83 ec 10             	sub    $0x10,%esp
    3dcc:	e8 0f d4 ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    3dd1:	81 c3 23 42 00 00    	add    $0x4223,%ebx
    3dd7:	8b 7c 24 20          	mov    0x20(%esp),%edi
    3ddb:	8b 74 24 24          	mov    0x24(%esp),%esi
    3ddf:	e8 35 fe ff ff       	call   3c19 <init_sampler>
    3de4:	83 bb 00 2f 84 03 00 	cmpl   $0x0,0x3842f00(%ebx)
    3deb:	74 76                	je     3e63 <fcyc_v+0x9d>
    3ded:	eb 32                	jmp    3e21 <fcyc_v+0x5b>
    3def:	e8 f2 03 00 00       	call   41e6 <start_comp_counter>
    3df4:	83 ec 0c             	sub    $0xc,%esp
    3df7:	56                   	push   %esi
    3df8:	ff d7                	call   *%edi
    3dfa:	e8 54 04 00 00       	call   4253 <get_comp_counter>
    3dff:	dd 1c 24             	fstpl  (%esp)
    3e02:	e8 4d fd ff ff       	call   3b54 <add_sample>
    3e07:	e8 c7 fd ff ff       	call   3bd3 <has_converged>
    3e0c:	83 c4 10             	add    $0x10,%esp
    3e0f:	85 c0                	test   %eax,%eax
    3e11:	75 60                	jne    3e73 <fcyc_v+0xad>
    3e13:	8b 83 64 02 00 00    	mov    0x264(%ebx),%eax
    3e19:	39 83 f0 2e 84 03    	cmp    %eax,0x3842ef0(%ebx)
    3e1f:	7d 52                	jge    3e73 <fcyc_v+0xad>
    3e21:	83 bb fc 2e 84 03 00 	cmpl   $0x0,0x3842efc(%ebx)
    3e28:	74 c5                	je     3def <fcyc_v+0x29>
    3e2a:	e8 34 fe ff ff       	call   3c63 <clear>
    3e2f:	eb be                	jmp    3def <fcyc_v+0x29>
    3e31:	e8 44 01 00 00       	call   3f7a <start_counter>
    3e36:	83 ec 0c             	sub    $0xc,%esp
    3e39:	56                   	push   %esi
    3e3a:	ff d7                	call   *%edi
    3e3c:	e8 5a 01 00 00       	call   3f9b <get_counter>
    3e41:	dd 1c 24             	fstpl  (%esp)
    3e44:	e8 0b fd ff ff       	call   3b54 <add_sample>
    3e49:	e8 85 fd ff ff       	call   3bd3 <has_converged>
    3e4e:	83 c4 10             	add    $0x10,%esp
    3e51:	85 c0                	test   %eax,%eax
    3e53:	75 1e                	jne    3e73 <fcyc_v+0xad>
    3e55:	8b 83 64 02 00 00    	mov    0x264(%ebx),%eax
    3e5b:	39 83 f0 2e 84 03    	cmp    %eax,0x3842ef0(%ebx)
    3e61:	7d 10                	jge    3e73 <fcyc_v+0xad>
    3e63:	83 bb fc 2e 84 03 00 	cmpl   $0x0,0x3842efc(%ebx)
    3e6a:	74 c5                	je     3e31 <fcyc_v+0x6b>
    3e6c:	e8 f2 fd ff ff       	call   3c63 <clear>
    3e71:	eb be                	jmp    3e31 <fcyc_v+0x6b>
    3e73:	8b 83 f4 2e 84 03    	mov    0x3842ef4(%ebx),%eax
    3e79:	dd 00                	fldl   (%eax)
    3e7b:	dd 5c 24 08          	fstpl  0x8(%esp)
    3e7f:	83 ec 0c             	sub    $0xc,%esp
    3e82:	50                   	push   %eax
    3e83:	e8 f8 d1 ff ff       	call   1080 <free@plt>
    3e88:	c7 83 f4 2e 84 03 00 	movl   $0x0,0x3842ef4(%ebx)
    3e8f:	00 00 00 
    3e92:	dd 44 24 18          	fldl   0x18(%esp)
    3e96:	83 c4 20             	add    $0x20,%esp
    3e99:	5b                   	pop    %ebx
    3e9a:	5e                   	pop    %esi
    3e9b:	5f                   	pop    %edi
    3e9c:	c3                   	ret

00003e9d <set_fcyc_clear_cache>:
    3e9d:	e8 03 eb ff ff       	call   29a5 <__x86.get_pc_thunk.ax>
    3ea2:	05 52 41 00 00       	add    $0x4152,%eax
    3ea7:	8b 54 24 04          	mov    0x4(%esp),%edx
    3eab:	89 90 fc 2e 84 03    	mov    %edx,0x3842efc(%eax)
    3eb1:	c3                   	ret

00003eb2 <set_fcyc_cache_size>:
    3eb2:	53                   	push   %ebx
    3eb3:	83 ec 08             	sub    $0x8,%esp
    3eb6:	e8 25 d3 ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    3ebb:	81 c3 39 41 00 00    	add    $0x4139,%ebx
    3ec1:	8b 44 24 10          	mov    0x10(%esp),%eax
    3ec5:	39 83 58 02 00 00    	cmp    %eax,0x258(%ebx)
    3ecb:	74 26                	je     3ef3 <set_fcyc_cache_size+0x41>
    3ecd:	89 83 58 02 00 00    	mov    %eax,0x258(%ebx)
    3ed3:	8b 83 f8 2e 84 03    	mov    0x3842ef8(%ebx),%eax
    3ed9:	85 c0                	test   %eax,%eax
    3edb:	74 16                	je     3ef3 <set_fcyc_cache_size+0x41>
    3edd:	83 ec 0c             	sub    $0xc,%esp
    3ee0:	50                   	push   %eax
    3ee1:	e8 9a d1 ff ff       	call   1080 <free@plt>
    3ee6:	c7 83 f8 2e 84 03 00 	movl   $0x0,0x3842ef8(%ebx)
    3eed:	00 00 00 
    3ef0:	83 c4 10             	add    $0x10,%esp
    3ef3:	83 c4 08             	add    $0x8,%esp
    3ef6:	5b                   	pop    %ebx
    3ef7:	c3                   	ret

00003ef8 <set_fcyc_cache_block>:
    3ef8:	e8 a8 ea ff ff       	call   29a5 <__x86.get_pc_thunk.ax>
    3efd:	05 f7 40 00 00       	add    $0x40f7,%eax
    3f02:	8b 54 24 04          	mov    0x4(%esp),%edx
    3f06:	89 90 54 02 00 00    	mov    %edx,0x254(%eax)
    3f0c:	c3                   	ret

00003f0d <set_fcyc_compensate>:
    3f0d:	e8 93 ea ff ff       	call   29a5 <__x86.get_pc_thunk.ax>
    3f12:	05 e2 40 00 00       	add    $0x40e2,%eax
    3f17:	8b 54 24 04          	mov    0x4(%esp),%edx
    3f1b:	89 90 00 2f 84 03    	mov    %edx,0x3842f00(%eax)
    3f21:	c3                   	ret

00003f22 <set_fcyc_k>:
    3f22:	e8 7e ea ff ff       	call   29a5 <__x86.get_pc_thunk.ax>
    3f27:	05 cd 40 00 00       	add    $0x40cd,%eax
    3f2c:	8b 54 24 04          	mov    0x4(%esp),%edx
    3f30:	89 90 68 02 00 00    	mov    %edx,0x268(%eax)
    3f36:	c3                   	ret

00003f37 <set_fcyc_maxsamples>:
    3f37:	e8 69 ea ff ff       	call   29a5 <__x86.get_pc_thunk.ax>
    3f3c:	05 b8 40 00 00       	add    $0x40b8,%eax
    3f41:	8b 54 24 04          	mov    0x4(%esp),%edx
    3f45:	89 90 64 02 00 00    	mov    %edx,0x264(%eax)
    3f4b:	c3                   	ret

00003f4c <set_fcyc_epsilon>:
    3f4c:	e8 54 ea ff ff       	call   29a5 <__x86.get_pc_thunk.ax>
    3f51:	05 a3 40 00 00       	add    $0x40a3,%eax
    3f56:	f2 0f 10 44 24 04    	movsd  0x4(%esp),%xmm0
    3f5c:	f2 0f 11 80 5c 02 00 	movsd  %xmm0,0x25c(%eax)
    3f63:	00 
    3f64:	c3                   	ret

00003f65 <access_counter>:
    3f65:	53                   	push   %ebx
    3f66:	0f 31                	rdtsc
    3f68:	89 d3                	mov    %edx,%ebx
    3f6a:	89 c1                	mov    %eax,%ecx
    3f6c:	8b 44 24 08          	mov    0x8(%esp),%eax
    3f70:	89 18                	mov    %ebx,(%eax)
    3f72:	8b 44 24 0c          	mov    0xc(%esp),%eax
    3f76:	89 08                	mov    %ecx,(%eax)
    3f78:	5b                   	pop    %ebx
    3f79:	c3                   	ret

00003f7a <start_counter>:
    3f7a:	e8 26 ea ff ff       	call   29a5 <__x86.get_pc_thunk.ax>
    3f7f:	05 75 40 00 00       	add    $0x4075,%eax
    3f84:	8d 90 14 2f 84 03    	lea    0x3842f14(%eax),%edx
    3f8a:	52                   	push   %edx
    3f8b:	8d 80 18 2f 84 03    	lea    0x3842f18(%eax),%eax
    3f91:	50                   	push   %eax
    3f92:	e8 ce ff ff ff       	call   3f65 <access_counter>
    3f97:	83 c4 08             	add    $0x8,%esp
    3f9a:	c3                   	ret

00003f9b <get_counter>:
    3f9b:	53                   	push   %ebx
    3f9c:	83 ec 28             	sub    $0x28,%esp
    3f9f:	e8 3c d2 ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    3fa4:	81 c3 50 40 00 00    	add    $0x4050,%ebx
    3faa:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    3fb0:	89 44 24 1c          	mov    %eax,0x1c(%esp)
    3fb4:	31 c0                	xor    %eax,%eax
    3fb6:	8d 44 24 18          	lea    0x18(%esp),%eax
    3fba:	50                   	push   %eax
    3fbb:	8d 44 24 18          	lea    0x18(%esp),%eax
    3fbf:	50                   	push   %eax
    3fc0:	e8 a0 ff ff ff       	call   3f65 <access_counter>
    3fc5:	8b 44 24 20          	mov    0x20(%esp),%eax
    3fc9:	89 c2                	mov    %eax,%edx
    3fcb:	2b 93 14 2f 84 03    	sub    0x3842f14(%ebx),%edx
    3fd1:	83 c4 08             	add    $0x8,%esp
    3fd4:	39 d0                	cmp    %edx,%eax
    3fd6:	0f 92 c1             	setb   %cl
    3fd9:	0f b6 c9             	movzbl %cl,%ecx
    3fdc:	8b 44 24 14          	mov    0x14(%esp),%eax
    3fe0:	2b 83 18 2f 84 03    	sub    0x3842f18(%ebx),%eax
    3fe6:	29 c8                	sub    %ecx,%eax
    3fe8:	66 0f 6e c0          	movd   %eax,%xmm0
    3fec:	66 0f d6 44 24 08    	movq   %xmm0,0x8(%esp)
    3ff2:	df 6c 24 08          	fildll 0x8(%esp)
    3ff6:	d8 8b 88 d6 ff ff    	fmuls  -0x2978(%ebx)
    3ffc:	d8 8b 8c d6 ff ff    	fmuls  -0x2974(%ebx)
    4002:	66 0f 6e c2          	movd   %edx,%xmm0
    4006:	66 0f d6 44 24 08    	movq   %xmm0,0x8(%esp)
    400c:	df 6c 24 08          	fildll 0x8(%esp)
    4010:	de c1                	faddp  %st,%st(1)
    4012:	d9 c0                	fld    %st(0)
    4014:	dd 1c 24             	fstpl  (%esp)
    4017:	d9 ee                	fldz
    4019:	df f1                	fcomip %st(1),%st
    401b:	77 17                	ja     4034 <get_counter+0x99>
    401d:	dd d8                	fstp   %st(0)
    401f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    4023:	65 2b 05 14 00 00 00 	sub    %gs:0x14,%eax
    402a:	75 28                	jne    4054 <get_counter+0xb9>
    402c:	dd 04 24             	fldl   (%esp)
    402f:	83 c4 28             	add    $0x28,%esp
    4032:	5b                   	pop    %ebx
    4033:	c3                   	ret
    4034:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    4038:	dd 1c 24             	fstpl  (%esp)
    403b:	8d 83 3c d6 ff ff    	lea    -0x29c4(%ebx),%eax
    4041:	50                   	push   %eax
    4042:	8b 83 e4 ff ff ff    	mov    -0x1c(%ebx),%eax
    4048:	ff 30                	push   (%eax)
    404a:	e8 f1 d0 ff ff       	call   1140 <fprintf@plt>
    404f:	83 c4 10             	add    $0x10,%esp
    4052:	eb cb                	jmp    401f <get_counter+0x84>
    4054:	e8 67 02 00 00       	call   42c0 <__stack_chk_fail_local>

00004059 <callibrate>:
    4059:	57                   	push   %edi
    405a:	56                   	push   %esi
    405b:	53                   	push   %ebx
    405c:	83 ec 4c             	sub    $0x4c,%esp
    405f:	e8 7c d1 ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    4064:	81 c3 90 3f 00 00    	add    $0x3f90,%ebx
    406a:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    4070:	89 44 24 48          	mov    %eax,0x48(%esp)
    4074:	31 c0                	xor    %eax,%eax
    4076:	8d 44 24 38          	lea    0x38(%esp),%eax
    407a:	50                   	push   %eax
    407b:	e8 f0 cf ff ff       	call   1070 <times@plt>
    4080:	8b 7c 24 3c          	mov    0x3c(%esp),%edi
    4084:	e8 f1 fe ff ff       	call   3f7a <start_counter>
    4089:	e8 0d ff ff ff       	call   3f9b <get_counter>
    408e:	dd 5c 24 18          	fstpl  0x18(%esp)
    4092:	83 c4 10             	add    $0x10,%esp
    4095:	be 00 00 00 00       	mov    $0x0,%esi
    409a:	83 fe 63             	cmp    $0x63,%esi
    409d:	0f 8f 91 00 00 00    	jg     4134 <callibrate+0xdb>
    40a3:	e8 f3 fe ff ff       	call   3f9b <get_counter>
    40a8:	dd 54 24 10          	fstl   0x10(%esp)
    40ac:	dc 64 24 08          	fsubl  0x8(%esp)
    40b0:	dd 54 24 18          	fstl   0x18(%esp)
    40b4:	d9 83 90 d6 ff ff    	flds   -0x2970(%ebx)
    40ba:	d9 c9                	fxch   %st(1)
    40bc:	df f1                	fcomip %st(1),%st
    40be:	dd d8                	fstp   %st(0)
    40c0:	72 d8                	jb     409a <callibrate+0x41>
    40c2:	83 ec 0c             	sub    $0xc,%esp
    40c5:	8d 44 24 38          	lea    0x38(%esp),%eax
    40c9:	50                   	push   %eax
    40ca:	e8 a1 cf ff ff       	call   1070 <times@plt>
    40cf:	8b 44 24 3c          	mov    0x3c(%esp),%eax
    40d3:	83 c4 10             	add    $0x10,%esp
    40d6:	39 c7                	cmp    %eax,%edi
    40d8:	7d 43                	jge    411d <callibrate+0xc4>
    40da:	89 c2                	mov    %eax,%edx
    40dc:	29 fa                	sub    %edi,%edx
    40de:	89 54 24 08          	mov    %edx,0x8(%esp)
    40e2:	db 44 24 08          	fildl  0x8(%esp)
    40e6:	dc 7c 24 18          	fdivrl 0x18(%esp)
    40ea:	d9 ee                	fldz
    40ec:	dd 83 0c 2f 84 03    	fldl   0x3842f0c(%ebx)
    40f2:	db e9                	fucomi %st(1),%st
    40f4:	dd d9                	fstp   %st(1)
    40f6:	7a 36                	jp     412e <callibrate+0xd5>
    40f8:	75 34                	jne    412e <callibrate+0xd5>
    40fa:	dd d8                	fstp   %st(0)
    40fc:	d9 83 94 d6 ff ff    	flds   -0x296c(%ebx)
    4102:	d9 c9                	fxch   %st(1)
    4104:	db f1                	fcomi  %st(1),%st
    4106:	dd d9                	fstp   %st(1)
    4108:	76 08                	jbe    4112 <callibrate+0xb9>
    410a:	dd 9b 0c 2f 84 03    	fstpl  0x3842f0c(%ebx)
    4110:	eb 06                	jmp    4118 <callibrate+0xbf>
    4112:	dd d8                	fstp   %st(0)
    4114:	eb 02                	jmp    4118 <callibrate+0xbf>
    4116:	dd d8                	fstp   %st(0)
    4118:	83 c6 01             	add    $0x1,%esi
    411b:	89 c7                	mov    %eax,%edi
    411d:	f2 0f 10 44 24 10    	movsd  0x10(%esp),%xmm0
    4123:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%esp)
    4129:	e9 6c ff ff ff       	jmp    409a <callibrate+0x41>
    412e:	df f1                	fcomip %st(1),%st
    4130:	76 e4                	jbe    4116 <callibrate+0xbd>
    4132:	eb c8                	jmp    40fc <callibrate+0xa3>
    4134:	8b 44 24 3c          	mov    0x3c(%esp),%eax
    4138:	65 2b 05 14 00 00 00 	sub    %gs:0x14,%eax
    413f:	75 07                	jne    4148 <callibrate+0xef>
    4141:	83 c4 40             	add    $0x40,%esp
    4144:	5b                   	pop    %ebx
    4145:	5e                   	pop    %esi
    4146:	5f                   	pop    %edi
    4147:	c3                   	ret
    4148:	e8 73 01 00 00       	call   42c0 <__stack_chk_fail_local>

0000414d <ovhd>:
    414d:	d9 ee                	fldz
    414f:	53                   	push   %ebx
    4150:	83 ec 08             	sub    $0x8,%esp
    4153:	bb 00 00 00 00       	mov    $0x0,%ebx
    4158:	eb 0f                	jmp    4169 <ovhd+0x1c>
    415a:	dd d8                	fstp   %st(0)
    415c:	e8 19 fe ff ff       	call   3f7a <start_counter>
    4161:	e8 35 fe ff ff       	call   3f9b <get_counter>
    4166:	83 c3 01             	add    $0x1,%ebx
    4169:	83 fb 01             	cmp    $0x1,%ebx
    416c:	7e ec                	jle    415a <ovhd+0xd>
    416e:	83 c4 08             	add    $0x8,%esp
    4171:	5b                   	pop    %ebx
    4172:	c3                   	ret

00004173 <mhz_full>:
    4173:	53                   	push   %ebx
    4174:	83 ec 18             	sub    $0x18,%esp
    4177:	e8 64 d0 ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    417c:	81 c3 78 3e 00 00    	add    $0x3e78,%ebx
    4182:	e8 f3 fd ff ff       	call   3f7a <start_counter>
    4187:	83 ec 0c             	sub    $0xc,%esp
    418a:	ff 74 24 30          	push   0x30(%esp)
    418e:	e8 3d cf ff ff       	call   10d0 <sleep@plt>
    4193:	e8 03 fe ff ff       	call   3f9b <get_counter>
    4198:	db 44 24 34          	fildl  0x34(%esp)
    419c:	d8 8b 98 d6 ff ff    	fmuls  -0x2968(%ebx)
    41a2:	de f9                	fdivrp %st,%st(1)
    41a4:	dd 54 24 18          	fstl   0x18(%esp)
    41a8:	83 c4 10             	add    $0x10,%esp
    41ab:	83 7c 24 20 00       	cmpl   $0x0,0x20(%esp)
    41b0:	75 0b                	jne    41bd <mhz_full+0x4a>
    41b2:	dd d8                	fstp   %st(0)
    41b4:	dd 44 24 08          	fldl   0x8(%esp)
    41b8:	83 c4 18             	add    $0x18,%esp
    41bb:	5b                   	pop    %ebx
    41bc:	c3                   	ret
    41bd:	83 ec 0c             	sub    $0xc,%esp
    41c0:	dd 1c 24             	fstpl  (%esp)
    41c3:	8d 83 64 d6 ff ff    	lea    -0x299c(%ebx),%eax
    41c9:	50                   	push   %eax
    41ca:	e8 91 ce ff ff       	call   1060 <printf@plt>
    41cf:	83 c4 10             	add    $0x10,%esp
    41d2:	eb e0                	jmp    41b4 <mhz_full+0x41>

000041d4 <mhz>:
    41d4:	83 ec 14             	sub    $0x14,%esp
    41d7:	6a 02                	push   $0x2
    41d9:	ff 74 24 1c          	push   0x1c(%esp)
    41dd:	e8 91 ff ff ff       	call   4173 <mhz_full>
    41e2:	83 c4 1c             	add    $0x1c,%esp
    41e5:	c3                   	ret

000041e6 <start_comp_counter>:
    41e6:	53                   	push   %ebx
    41e7:	83 ec 28             	sub    $0x28,%esp
    41ea:	e8 f1 cf ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    41ef:	81 c3 05 3e 00 00    	add    $0x3e05,%ebx
    41f5:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    41fb:	89 44 24 1c          	mov    %eax,0x1c(%esp)
    41ff:	31 c0                	xor    %eax,%eax
    4201:	d9 ee                	fldz
    4203:	dd 83 0c 2f 84 03    	fldl   0x3842f0c(%ebx)
    4209:	df e9                	fucomip %st(1),%st
    420b:	dd d8                	fstp   %st(0)
    420d:	7a 02                	jp     4211 <start_comp_counter+0x2b>
    420f:	74 31                	je     4242 <start_comp_counter+0x5c>
    4211:	83 ec 0c             	sub    $0xc,%esp
    4214:	8d 44 24 18          	lea    0x18(%esp),%eax
    4218:	50                   	push   %eax
    4219:	e8 52 ce ff ff       	call   1070 <times@plt>
    421e:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    4222:	89 83 04 2f 84 03    	mov    %eax,0x3842f04(%ebx)
    4228:	e8 4d fd ff ff       	call   3f7a <start_counter>
    422d:	83 c4 10             	add    $0x10,%esp
    4230:	8b 44 24 1c          	mov    0x1c(%esp),%eax
    4234:	65 2b 05 14 00 00 00 	sub    %gs:0x14,%eax
    423b:	75 11                	jne    424e <start_comp_counter+0x68>
    423d:	83 c4 28             	add    $0x28,%esp
    4240:	5b                   	pop    %ebx
    4241:	c3                   	ret
    4242:	b8 01 00 00 00       	mov    $0x1,%eax
    4247:	e8 0d fe ff ff       	call   4059 <callibrate>
    424c:	eb c3                	jmp    4211 <start_comp_counter+0x2b>
    424e:	e8 6d 00 00 00       	call   42c0 <__stack_chk_fail_local>

00004253 <get_comp_counter>:
    4253:	53                   	push   %ebx
    4254:	83 ec 38             	sub    $0x38,%esp
    4257:	e8 84 cf ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    425c:	81 c3 98 3d 00 00    	add    $0x3d98,%ebx
    4262:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    4268:	89 44 24 2c          	mov    %eax,0x2c(%esp)
    426c:	31 c0                	xor    %eax,%eax
    426e:	e8 28 fd ff ff       	call   3f9b <get_counter>
    4273:	dd 1c 24             	fstpl  (%esp)
    4276:	83 ec 0c             	sub    $0xc,%esp
    4279:	8d 44 24 28          	lea    0x28(%esp),%eax
    427d:	50                   	push   %eax
    427e:	e8 ed cd ff ff       	call   1070 <times@plt>
    4283:	8b 44 24 2c          	mov    0x2c(%esp),%eax
    4287:	2b 83 04 2f 84 03    	sub    0x3842f04(%ebx),%eax
    428d:	89 44 24 1c          	mov    %eax,0x1c(%esp)
    4291:	db 44 24 1c          	fildl  0x1c(%esp)
    4295:	dc 8b 0c 2f 84 03    	fmull  0x3842f0c(%ebx)
    429b:	dc 6c 24 10          	fsubrl 0x10(%esp)
    429f:	83 c4 10             	add    $0x10,%esp
    42a2:	8b 44 24 2c          	mov    0x2c(%esp),%eax
    42a6:	65 2b 05 14 00 00 00 	sub    %gs:0x14,%eax
    42ad:	75 05                	jne    42b4 <get_comp_counter+0x61>
    42af:	83 c4 38             	add    $0x38,%esp
    42b2:	5b                   	pop    %ebx
    42b3:	c3                   	ret
    42b4:	dd d8                	fstp   %st(0)
    42b6:	e8 05 00 00 00       	call   42c0 <__stack_chk_fail_local>
    42bb:	66 90                	xchg   %ax,%ax
    42bd:	66 90                	xchg   %ax,%ax
    42bf:	90                   	nop

000042c0 <__stack_chk_fail_local>:
    42c0:	f3 0f 1e fb          	endbr32
    42c4:	56                   	push   %esi
    42c5:	5e                   	pop    %esi
    42c6:	e8 da e6 ff ff       	call   29a5 <__x86.get_pc_thunk.ax>
    42cb:	05 29 3d 00 00       	add    $0x3d29,%eax
    42d0:	83 ec 0c             	sub    $0xc,%esp
    42d3:	ff 90 e8 ff ff ff    	call   *-0x18(%eax)

Disassembly of section .fini:

000042dc <_fini>:
    42dc:	f3 0f 1e fb          	endbr32
    42e0:	53                   	push   %ebx
    42e1:	83 ec 08             	sub    $0x8,%esp
    42e4:	e8 f7 ce ff ff       	call   11e0 <__x86.get_pc_thunk.bx>
    42e9:	81 c3 0b 3d 00 00    	add    $0x3d0b,%ebx
    42ef:	83 c4 08             	add    $0x8,%esp
    42f2:	5b                   	pop    %ebx
    42f3:	c3                   	ret
