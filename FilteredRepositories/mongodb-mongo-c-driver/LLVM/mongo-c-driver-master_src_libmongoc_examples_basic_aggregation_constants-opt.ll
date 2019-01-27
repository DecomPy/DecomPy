; ModuleID = 'Repositories/mongodb-mongo-c-driver/Unfiltered/mongo-c-driver-master_src_libmongoc_examples_basic_aggregation_constants.c'
source_filename = "Repositories/mongodb-mongo-c-driver/Unfiltered/mongo-c-driver-master_src_libmongoc_examples_basic_aggregation_constants.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [7 x i8] c"things\00", align 1
@COLLECTION_NAME = constant i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"function () {this.tags.forEach(function(z) {emit(z, 1);});}\00", align 1
@MAPPER = constant i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [114 x i8] c"function (key, values) {var total = 0;for (var i = 0; i < values.length; i++) {total += values[i];}return total;}\00", align 1
@REDUCER = constant i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.2, i32 0, i32 0), align 8

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
