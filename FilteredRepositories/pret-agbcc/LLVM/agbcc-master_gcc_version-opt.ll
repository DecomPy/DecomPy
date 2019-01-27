; ModuleID = 'Repositories/pret-agbcc/Unfiltered/agbcc-master_gcc_version.c'
source_filename = "Repositories/pret-agbcc/Unfiltered/agbcc-master_gcc_version.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [15 x i8] c"2.9-arm-000512\00", align 1
@version_string = global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), align 8

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
