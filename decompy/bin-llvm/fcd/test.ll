; ModuleID = 'test'
source_filename = "test"
target datalayout = "m:e-n8:16:32:64-p0:64:64:64-p1:64:64:64"
target triple = "x86_64-unknown-linux"

%struct.x86_regs = type { %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg }
%union.x86_qword_reg = type { i64 }

define void @main(%struct.x86_regs*) !fcd.vaddr !2 !fcd.recoverable !3 {
entry:
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %0, i64 0, i32 9, i32 0
  %2 = load i64, i64* %1, align 8, !tbaa !4, !alias.scope !8
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %0, i64 0, i32 8, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !4, !alias.scope !11
  %5 = add i64 %4, -8
  %6 = inttoptr i64 %5 to i64*
  store i64 %2, i64* %6, align 4, !fcd.prgmem !3
  %7 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %0, i64 0, i32 7, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !4, !alias.scope !16, !noalias !23
  %9 = add i64 %4, -16
  %10 = inttoptr i64 %9 to i64*
  store i64 %8, i64* %10, align 4, !fcd.prgmem !3
  store i64 %9, i64* %7, align 8, !tbaa !4, !alias.scope !25, !noalias !34
  %11 = add i64 %4, -32
  store i64 %11, i64* %3, align 8, !tbaa !4, !alias.scope !37, !noalias !44
  %12 = add i64 %4, -20
  %13 = inttoptr i64 %12 to i32*
  store i32 0, i32* %13, align 4, !fcd.prgmem !3
  store i64 4195494, i64* %1, align 4
  %14 = add i64 %4, -24
  %15 = inttoptr i64 %14 to i32*
  store i32 4, i32* %15, align 4, !fcd.prgmem !3
  br label %"4004a6"

"4004a6":                                         ; preds = %"4004b0", %entry
  %16 = phi i64 [ %47, %"4004b0" ], [ %9, %entry ]
  %17 = add i64 %16, -8
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4, !fcd.prgmem !3
  %20 = add i32 %19, -10
  %21 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %19, i32 10) #1
  %22 = extractvalue { i32, i1 } %21, 1
  %23 = zext i1 %22 to i8
  %24 = lshr i32 %20, 31
  %25 = trunc i32 %24 to i8
  store i64 4195504, i64* %1, align 4
  %26 = icmp eq i8 %25, %23
  br i1 %26, label %"4004d2", label %"4004b0"

"4004d2":                                         ; preds = %"4004a6"
  %27 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %0, i64 0, i32 1, i32 0
  store i64 0, i64* %27, align 8, !tbaa !4, !alias.scope !46, !noalias !53
  %28 = load i64, i64* %3, align 8, !tbaa !4, !alias.scope !55, !noalias !62
  %29 = add i64 %28, 16
  %30 = inttoptr i64 %29 to i64*
  %31 = load i64, i64* %30, align 4, !fcd.prgmem !3
  %32 = add i64 %28, 24
  store i64 %31, i64* %7, align 8, !tbaa !4, !alias.scope !64, !noalias !71
  %33 = inttoptr i64 %32 to i64*
  %34 = load i64, i64* %33, align 4, !fcd.prgmem !3
  %35 = add i64 %28, 32
  store i64 %35, i64* %3, align 8, !tbaa !4, !alias.scope !73
  store i64 %34, i64* %1, align 8, !tbaa !4, !alias.scope !78
  ret void

"4004b0":                                         ; preds = %"4004a6"
  store i64 4195509, i64* %1, align 4
  call void @test(%struct.x86_regs* %0)
  %36 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %0, i64 0, i32 1, i32 0
  %37 = bitcast i64* %36 to i32*
  %38 = load i32, i32* %37, align 4, !tbaa !81, !alias.scope !83, !noalias !90
  %39 = load i64, i64* %7, align 8, !tbaa !4, !alias.scope !92, !noalias !1
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i32*
  %42 = load i32, i32* %41, align 4, !fcd.prgmem !3
  %43 = add i32 %38, %42
  %44 = add i32 %43, 1
  store i32 %44, i32* %41, align 4, !fcd.prgmem !3
  %45 = add i32 %43, -11
  %46 = zext i32 %45 to i64
  store i64 %46, i64* %36, align 8, !tbaa !4, !alias.scope !141, !noalias !148
  %47 = load i64, i64* %7, align 8, !tbaa !4, !alias.scope !150, !noalias !161
  %48 = add i64 %47, -8
  %49 = inttoptr i64 %48 to i32*
  store i32 %45, i32* %49, align 4, !fcd.prgmem !3
  store i64 4195538, i64* %1, align 4
  br label %"4004a6"
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

define void @test(%struct.x86_regs*) !fcd.vaddr !166 !fcd.recoverable !3 {
entry:
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %0, i64 0, i32 9, i32 0
  %2 = load i64, i64* %1, align 8, !tbaa !4, !alias.scope !167
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %0, i64 0, i32 8, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !4, !alias.scope !170
  %5 = add i64 %4, -8
  %6 = inttoptr i64 %5 to i64*
  store i64 %2, i64* %6, align 4, !fcd.prgmem !3
  %7 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %0, i64 0, i32 7, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %4, -16
  %10 = inttoptr i64 %9 to i64*
  store i64 %8, i64* %10, align 4, !fcd.prgmem !3
  %11 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %0, i64 0, i32 1, i32 0
  store i64 12, i64* %11, align 8, !tbaa !4, !alias.scope !175, !noalias !184
  store i64 %8, i64* %7, align 8, !tbaa !4, !alias.scope !187, !noalias !194
  %12 = load i64, i64* %6, align 4, !fcd.prgmem !3
  store i64 %4, i64* %3, align 8, !tbaa !4, !alias.scope !196
  store i64 %12, i64* %1, align 8, !tbaa !4, !alias.scope !201
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 6, !"fcd.includes", !1}
!1 = !{}
!2 = !{i64 4195472}
!3 = !{i1 true}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZL12x86_read_regPK8x86_regs7x86_reg: argument 0"}
!10 = distinct !{!10, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!11 = !{!12, !14}
!12 = distinct !{!12, !13, !"_ZL12x86_read_regPK8x86_regs7x86_reg: argument 0"}
!13 = distinct !{!13, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!14 = distinct !{!14, !15, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: argument 0"}
!15 = distinct !{!15, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!16 = !{!17, !19, !21}
!17 = distinct !{!17, !18, !"_ZL12x86_read_regPK8x86_regs7x86_reg: argument 0"}
!18 = distinct !{!18, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!19 = distinct !{!19, !20, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: argument 0"}
!20 = distinct !{!20, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!21 = distinct !{!21, !22, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: argument 1"}
!22 = distinct !{!22, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: argument 0"}
!25 = !{!26, !28, !30, !32}
!26 = distinct !{!26, !27, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!27 = distinct !{!27, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!28 = distinct !{!28, !29, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: argument 0"}
!29 = distinct !{!29, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!30 = distinct !{!30, !31, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 1"}
!31 = distinct !{!31, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!32 = distinct !{!32, !33, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: argument 0"}
!33 = distinct !{!33, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!34 = !{!35, !36}
!35 = distinct !{!35, !31, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 0"}
!36 = distinct !{!36, !33, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: argument 1"}
!37 = !{!38, !40, !42}
!38 = distinct !{!38, !39, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!39 = distinct !{!39, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!40 = distinct !{!40, !41, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: argument 0"}
!41 = distinct !{!41, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!42 = distinct !{!42, !43, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 1"}
!43 = distinct !{!43, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 0"}
!46 = !{!47, !49, !51}
!47 = distinct !{!47, !48, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!48 = distinct !{!48, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!49 = distinct !{!49, !50, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: argument 0"}
!50 = distinct !{!50, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!51 = distinct !{!51, !52, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 1"}
!52 = distinct !{!52, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!53 = !{!54}
!54 = distinct !{!54, !52, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 0"}
!55 = !{!56, !58, !60}
!56 = distinct !{!56, !57, !"_ZL12x86_read_regPK8x86_regs7x86_reg: argument 0"}
!57 = distinct !{!57, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!58 = distinct !{!58, !59, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: argument 0"}
!59 = distinct !{!59, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!60 = distinct !{!60, !61, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: argument 1"}
!61 = distinct !{!61, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs"}
!62 = !{!63}
!63 = distinct !{!63, !61, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: argument 0"}
!64 = !{!65, !67, !69}
!65 = distinct !{!65, !66, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!66 = distinct !{!66, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!67 = distinct !{!67, !68, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: argument 0"}
!68 = distinct !{!68, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!69 = distinct !{!69, !70, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 1"}
!70 = distinct !{!70, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!71 = !{!72}
!72 = distinct !{!72, !70, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 0"}
!73 = !{!74, !76}
!74 = distinct !{!74, !75, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!75 = distinct !{!75, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!76 = distinct !{!76, !77, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm: argument 0"}
!77 = distinct !{!77, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!80 = distinct !{!80, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!81 = !{!82, !82, i64 0}
!82 = !{!"int", !6, i64 0}
!83 = !{!84, !86, !88}
!84 = distinct !{!84, !85, !"_ZL12x86_read_regPK8x86_regs7x86_reg: argument 0"}
!85 = distinct !{!85, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!86 = distinct !{!86, !87, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: argument 0"}
!87 = distinct !{!87, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!88 = distinct !{!88, !89, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: argument 1"}
!89 = distinct !{!89, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: argument 0"}
!92 = !{!93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139}
!93 = distinct !{!93, !94, !"_ZL12x86_read_regPK8x86_regs7x86_reg: argument 0"}
!94 = distinct !{!94, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!95 = distinct !{!95, !96, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: argument 0"}
!96 = distinct !{!96, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!97 = distinct !{!97, !98, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: argument 0"}
!98 = distinct !{!98, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op"}
!99 = distinct !{!99, !100, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: argument 1"}
!100 = distinct !{!100, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!101 = distinct !{!101, !102, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: argument 0"}
!102 = distinct !{!102, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!103 = distinct !{!103, !104, !"_ZL12x86_read_regPK8x86_regs7x86_reg: argument 0"}
!104 = distinct !{!104, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!105 = distinct !{!105, !106, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: argument 0"}
!106 = distinct !{!106, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!107 = distinct !{!107, !108, !"_ZL13x86_write_memPK8x86_regsPK9cs_x86_opm: argument 0"}
!108 = distinct !{!108, !"_ZL13x86_write_memPK8x86_regsPK9cs_x86_opm"}
!109 = distinct !{!109, !110, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 1"}
!110 = distinct !{!110, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!111 = distinct !{!111, !112, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: argument 0"}
!112 = distinct !{!112, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!113 = distinct !{!113, !114, !"_ZL12x86_read_regPK8x86_regs7x86_reg: argument 0"}
!114 = distinct !{!114, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!115 = distinct !{!115, !116, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: argument 0"}
!116 = distinct !{!116, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!117 = distinct !{!117, !118, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: argument 0"}
!118 = distinct !{!118, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op"}
!119 = distinct !{!119, !120, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: argument 1"}
!120 = distinct !{!120, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!121 = distinct !{!121, !122, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: argument 0"}
!122 = distinct !{!122, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!123 = distinct !{!123, !124, !"_ZL12x86_read_regPK8x86_regs7x86_reg: argument 0"}
!124 = distinct !{!124, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!125 = distinct !{!125, !126, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: argument 0"}
!126 = distinct !{!126, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!127 = distinct !{!127, !128, !"_ZL13x86_write_memPK8x86_regsPK9cs_x86_opm: argument 0"}
!128 = distinct !{!128, !"_ZL13x86_write_memPK8x86_regsPK9cs_x86_opm"}
!129 = distinct !{!129, !130, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 1"}
!130 = distinct !{!130, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!131 = distinct !{!131, !132, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: argument 0"}
!132 = distinct !{!132, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!133 = distinct !{!133, !134, !"_ZL12x86_read_regPK8x86_regs7x86_reg: argument 0"}
!134 = distinct !{!134, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!135 = distinct !{!135, !136, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: argument 0"}
!136 = distinct !{!136, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!137 = distinct !{!137, !138, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: argument 0"}
!138 = distinct !{!138, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op"}
!139 = distinct !{!139, !140, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: argument 1"}
!140 = distinct !{!140, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!141 = !{!142, !144, !146}
!142 = distinct !{!142, !143, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!143 = distinct !{!143, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!144 = distinct !{!144, !145, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: argument 0"}
!145 = distinct !{!145, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!146 = distinct !{!146, !147, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 1"}
!147 = distinct !{!147, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!148 = !{!149}
!149 = distinct !{!149, !147, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 0"}
!150 = !{!151, !153, !155, !157, !159}
!151 = distinct !{!151, !152, !"_ZL12x86_read_regPK8x86_regs7x86_reg: argument 0"}
!152 = distinct !{!152, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!153 = distinct !{!153, !154, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: argument 0"}
!154 = distinct !{!154, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!155 = distinct !{!155, !156, !"_ZL13x86_write_memPK8x86_regsPK9cs_x86_opm: argument 0"}
!156 = distinct !{!156, !"_ZL13x86_write_memPK8x86_regsPK9cs_x86_opm"}
!157 = distinct !{!157, !158, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 1"}
!158 = distinct !{!158, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!159 = distinct !{!159, !160, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: argument 0"}
!160 = distinct !{!160, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!161 = !{!162, !163, !164, !165}
!162 = distinct !{!162, !154, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: argument 1"}
!163 = distinct !{!163, !156, !"_ZL13x86_write_memPK8x86_regsPK9cs_x86_opm: argument 1"}
!164 = distinct !{!164, !158, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 0"}
!165 = distinct !{!165, !160, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: argument 1"}
!166 = !{i64 4195456}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZL12x86_read_regPK8x86_regs7x86_reg: argument 0"}
!169 = distinct !{!169, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!170 = !{!171, !173}
!171 = distinct !{!171, !172, !"_ZL12x86_read_regPK8x86_regs7x86_reg: argument 0"}
!172 = distinct !{!172, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!173 = distinct !{!173, !174, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: argument 0"}
!174 = distinct !{!174, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!175 = !{!176, !178, !180, !182}
!176 = distinct !{!176, !177, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!177 = distinct !{!177, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!178 = distinct !{!178, !179, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: argument 0"}
!179 = distinct !{!179, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!180 = distinct !{!180, !181, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 1"}
!181 = distinct !{!181, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!182 = distinct !{!182, !183, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: argument 0"}
!183 = distinct !{!183, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!184 = !{!185, !186}
!185 = distinct !{!185, !181, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 0"}
!186 = distinct !{!186, !183, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: argument 1"}
!187 = !{!188, !190, !192}
!188 = distinct !{!188, !189, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!189 = distinct !{!189, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!190 = distinct !{!190, !191, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: argument 0"}
!191 = distinct !{!191, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!192 = distinct !{!192, !193, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 1"}
!193 = distinct !{!193, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!194 = !{!195}
!195 = distinct !{!195, !193, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 0"}
!196 = !{!197, !199}
!197 = distinct !{!197, !198, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!198 = distinct !{!198, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!199 = distinct !{!199, !200, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm: argument 0"}
!200 = distinct !{!200, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!203 = distinct !{!203, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
