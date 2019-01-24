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
  store i64 %9, i64* %3, align 8, !tbaa !4, !alias.scope !25
  store i64 %9, i64* %7, align 8, !tbaa !4, !alias.scope !30, !noalias !39
  %11 = add i64 %4, -20
  %12 = inttoptr i64 %11 to i32*
  store i32 0, i32* %12, align 4, !fcd.prgmem !3
  store i64 4195474, i64* %1, align 4
  %13 = add i64 %4, -24
  %14 = inttoptr i64 %13 to i32*
  store i32 4, i32* %14, align 4, !fcd.prgmem !3
  br label %"400492"

"400492":                                         ; preds = %"40049c", %entry
  %15 = phi i32 [ %27, %"40049c" ], [ 4, %entry ]
  %16 = add i32 %15, -10
  %17 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %15, i32 10) #1
  %18 = extractvalue { i32, i1 } %17, 1
  %19 = zext i1 %18 to i8
  %20 = lshr i32 %16, 31
  %21 = trunc i32 %20 to i8
  store i64 4195484, i64* %1, align 4
  %22 = icmp eq i8 %21, %19
  br i1 %22, label %"4004aa", label %"40049c"

"4004aa":                                         ; preds = %"400492"
  %23 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %0, i64 0, i32 1, i32 0
  store i64 0, i64* %23, align 8, !tbaa !4, !alias.scope !42, !noalias !49
  %24 = load i64, i64* %10, align 4, !fcd.prgmem !3
  store i64 %24, i64* %7, align 8, !tbaa !4, !alias.scope !51, !noalias !58
  %25 = load i64, i64* %6, align 4, !fcd.prgmem !3
  store i64 %4, i64* %3, align 8, !tbaa !4, !alias.scope !60
  store i64 %25, i64* %1, align 8, !tbaa !4, !alias.scope !65
  ret void

"40049c":                                         ; preds = %"400492"
  %26 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %0, i64 0, i32 1, i32 0
  %27 = add i32 %15, 1
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %26, align 8, !tbaa !4, !alias.scope !68, !noalias !75
  store i32 %27, i32* %14, align 4, !fcd.prgmem !3
  store i64 4195498, i64* %1, align 4
  br label %"400492"
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 6, !"fcd.includes", !1}
!1 = !{}
!2 = !{i64 4195456}
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
!25 = !{!26, !28}
!26 = distinct !{!26, !27, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!27 = distinct !{!27, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!28 = distinct !{!28, !29, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: argument 0"}
!29 = distinct !{!29, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!30 = !{!31, !33, !35, !37}
!31 = distinct !{!31, !32, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!32 = distinct !{!32, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!33 = distinct !{!33, !34, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: argument 0"}
!34 = distinct !{!34, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!35 = distinct !{!35, !36, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 1"}
!36 = distinct !{!36, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!37 = distinct !{!37, !38, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: argument 0"}
!38 = distinct !{!38, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!39 = !{!40, !41}
!40 = distinct !{!40, !36, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 0"}
!41 = distinct !{!41, !38, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: argument 1"}
!42 = !{!43, !45, !47}
!43 = distinct !{!43, !44, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!44 = distinct !{!44, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!45 = distinct !{!45, !46, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: argument 0"}
!46 = distinct !{!46, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!47 = distinct !{!47, !48, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 1"}
!48 = distinct !{!48, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!49 = !{!50}
!50 = distinct !{!50, !48, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 0"}
!51 = !{!52, !54, !56}
!52 = distinct !{!52, !53, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!53 = distinct !{!53, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!54 = distinct !{!54, !55, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: argument 0"}
!55 = distinct !{!55, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!56 = distinct !{!56, !57, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 1"}
!57 = distinct !{!57, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!58 = !{!59}
!59 = distinct !{!59, !57, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 0"}
!60 = !{!61, !63}
!61 = distinct !{!61, !62, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!62 = distinct !{!62, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!63 = distinct !{!63, !64, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm: argument 0"}
!64 = distinct !{!64, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!67 = distinct !{!67, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!68 = !{!69, !71, !73}
!69 = distinct !{!69, !70, !"_ZL13x86_write_regP8x86_regs7x86_regm: argument 0"}
!70 = distinct !{!70, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!71 = distinct !{!71, !72, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: argument 0"}
!72 = distinct !{!72, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!73 = distinct !{!73, !74, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 1"}
!74 = distinct !{!74, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!75 = !{!76}
!76 = distinct !{!76, !74, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: argument 0"}
