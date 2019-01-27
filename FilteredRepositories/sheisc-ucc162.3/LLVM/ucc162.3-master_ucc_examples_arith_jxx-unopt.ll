; ModuleID = 'Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_arith_jxx.c'
source_filename = "Repositories/sheisc-ucc162.3/Unfiltered/ucc162.3-master_ucc_examples_arith_jxx.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@sa = global i32 1, align 4
@sb = global i32 2, align 4
@sc = global i32 3, align 4
@ua = global i32 1, align 4
@ub = global i32 2, align 4
@uc = global i32 3, align 4
@fa = global float 2.000000e+00, align 4
@fb = global float 2.000000e+00, align 4
@fc = global float 3.000000e+00, align 4
@da = global double 2.000000e+00, align 8
@db = global double 2.000000e+00, align 8
@dc = global double 3.000000e+00, align 8
@result = common global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s is true.\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"sa\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s is false.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"!sa\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"sa == sb\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"sa != sb\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"sa > sb\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"sa < sb\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"sa >= sb\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"sa <= sb\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"ua\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"!ua\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"ua == ub\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"ua != ub\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"ua > ub\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"ua < ub\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"ua >= ub\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"ua <= ub\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"fa\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"!fa\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"fa == fb\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"fa != fb\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"fa > fb\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"fa < fb\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"fa >= fb\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"fa <= fb\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"da\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"!da\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"da == db\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"da != db\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"da > db\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"da < db\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"da >= db\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"da <= db\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @DoTest() #0 {
  %1 = load i32, i32* @sa, align 4, !tbaa !3
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %5

; <label>:3:                                      ; preds = %0
  store i32 1, i32* @result, align 4, !tbaa !3
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %7

; <label>:5:                                      ; preds = %0
  store i32 0, i32* @result, align 4, !tbaa !3
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %7

; <label>:7:                                      ; preds = %5, %3
  %8 = load i32, i32* @sa, align 4, !tbaa !3
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %7
  store i32 1, i32* @result, align 4, !tbaa !3
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  br label %14

; <label>:12:                                     ; preds = %7
  store i32 0, i32* @result, align 4, !tbaa !3
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %12, %10
  %15 = load i32, i32* @sa, align 4, !tbaa !3
  %16 = load i32, i32* @sb, align 4, !tbaa !3
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %14
  store i32 1, i32* @result, align 4, !tbaa !3
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  br label %22

; <label>:20:                                     ; preds = %14
  store i32 0, i32* @result, align 4, !tbaa !3
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  br label %22

; <label>:22:                                     ; preds = %20, %18
  %23 = load i32, i32* @sa, align 4, !tbaa !3
  %24 = load i32, i32* @sb, align 4, !tbaa !3
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %22
  store i32 1, i32* @result, align 4, !tbaa !3
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  br label %30

; <label>:28:                                     ; preds = %22
  store i32 0, i32* @result, align 4, !tbaa !3
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  br label %30

; <label>:30:                                     ; preds = %28, %26
  %31 = load i32, i32* @sa, align 4, !tbaa !3
  %32 = load i32, i32* @sb, align 4, !tbaa !3
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %30
  store i32 1, i32* @result, align 4, !tbaa !3
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  br label %38

; <label>:36:                                     ; preds = %30
  store i32 0, i32* @result, align 4, !tbaa !3
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  br label %38

; <label>:38:                                     ; preds = %36, %34
  %39 = load i32, i32* @sa, align 4, !tbaa !3
  %40 = load i32, i32* @sb, align 4, !tbaa !3
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %38
  store i32 1, i32* @result, align 4, !tbaa !3
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0))
  br label %46

; <label>:44:                                     ; preds = %38
  store i32 0, i32* @result, align 4, !tbaa !3
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0))
  br label %46

; <label>:46:                                     ; preds = %44, %42
  %47 = load i32, i32* @sa, align 4, !tbaa !3
  %48 = load i32, i32* @sb, align 4, !tbaa !3
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %46
  store i32 1, i32* @result, align 4, !tbaa !3
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  br label %54

; <label>:52:                                     ; preds = %46
  store i32 0, i32* @result, align 4, !tbaa !3
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  br label %54

; <label>:54:                                     ; preds = %52, %50
  %55 = load i32, i32* @sa, align 4, !tbaa !3
  %56 = load i32, i32* @sb, align 4, !tbaa !3
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %54
  store i32 1, i32* @result, align 4, !tbaa !3
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0))
  br label %62

; <label>:60:                                     ; preds = %54
  store i32 0, i32* @result, align 4, !tbaa !3
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0))
  br label %62

; <label>:62:                                     ; preds = %60, %58
  %63 = load i32, i32* @ua, align 4, !tbaa !3
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %62
  store i32 1, i32* @result, align 4, !tbaa !3
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  br label %69

; <label>:67:                                     ; preds = %62
  store i32 0, i32* @result, align 4, !tbaa !3
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  br label %69

; <label>:69:                                     ; preds = %67, %65
  %70 = load i32, i32* @ua, align 4, !tbaa !3
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

; <label>:72:                                     ; preds = %69
  store i32 1, i32* @result, align 4, !tbaa !3
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  br label %76

; <label>:74:                                     ; preds = %69
  store i32 0, i32* @result, align 4, !tbaa !3
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  br label %76

; <label>:76:                                     ; preds = %74, %72
  %77 = load i32, i32* @ua, align 4, !tbaa !3
  %78 = load i32, i32* @ub, align 4, !tbaa !3
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

; <label>:80:                                     ; preds = %76
  store i32 1, i32* @result, align 4, !tbaa !3
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0))
  br label %84

; <label>:82:                                     ; preds = %76
  store i32 0, i32* @result, align 4, !tbaa !3
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0))
  br label %84

; <label>:84:                                     ; preds = %82, %80
  %85 = load i32, i32* @ua, align 4, !tbaa !3
  %86 = load i32, i32* @ub, align 4, !tbaa !3
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %90

; <label>:88:                                     ; preds = %84
  store i32 1, i32* @result, align 4, !tbaa !3
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0))
  br label %92

; <label>:90:                                     ; preds = %84
  store i32 0, i32* @result, align 4, !tbaa !3
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0))
  br label %92

; <label>:92:                                     ; preds = %90, %88
  %93 = load i32, i32* @ua, align 4, !tbaa !3
  %94 = load i32, i32* @ub, align 4, !tbaa !3
  %95 = icmp ugt i32 %93, %94
  br i1 %95, label %96, label %98

; <label>:96:                                     ; preds = %92
  store i32 1, i32* @result, align 4, !tbaa !3
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0))
  br label %100

; <label>:98:                                     ; preds = %92
  store i32 0, i32* @result, align 4, !tbaa !3
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0))
  br label %100

; <label>:100:                                    ; preds = %98, %96
  %101 = load i32, i32* @ua, align 4, !tbaa !3
  %102 = load i32, i32* @ub, align 4, !tbaa !3
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %106

; <label>:104:                                    ; preds = %100
  store i32 1, i32* @result, align 4, !tbaa !3
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0))
  br label %108

; <label>:106:                                    ; preds = %100
  store i32 0, i32* @result, align 4, !tbaa !3
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0))
  br label %108

; <label>:108:                                    ; preds = %106, %104
  %109 = load i32, i32* @ua, align 4, !tbaa !3
  %110 = load i32, i32* @ub, align 4, !tbaa !3
  %111 = icmp uge i32 %109, %110
  br i1 %111, label %112, label %114

; <label>:112:                                    ; preds = %108
  store i32 1, i32* @result, align 4, !tbaa !3
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0))
  br label %116

; <label>:114:                                    ; preds = %108
  store i32 0, i32* @result, align 4, !tbaa !3
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0))
  br label %116

; <label>:116:                                    ; preds = %114, %112
  %117 = load i32, i32* @ua, align 4, !tbaa !3
  %118 = load i32, i32* @ub, align 4, !tbaa !3
  %119 = icmp ule i32 %117, %118
  br i1 %119, label %120, label %122

; <label>:120:                                    ; preds = %116
  store i32 1, i32* @result, align 4, !tbaa !3
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0))
  br label %124

; <label>:122:                                    ; preds = %116
  store i32 0, i32* @result, align 4, !tbaa !3
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0))
  br label %124

; <label>:124:                                    ; preds = %122, %120
  %125 = load float, float* @fa, align 4, !tbaa !7
  %126 = fcmp une float %125, 0.000000e+00
  br i1 %126, label %127, label %129

; <label>:127:                                    ; preds = %124
  store i32 1, i32* @result, align 4, !tbaa !3
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0))
  br label %131

; <label>:129:                                    ; preds = %124
  store i32 0, i32* @result, align 4, !tbaa !3
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0))
  br label %131

; <label>:131:                                    ; preds = %129, %127
  %132 = load float, float* @fa, align 4, !tbaa !7
  %133 = fcmp une float %132, 0.000000e+00
  br i1 %133, label %136, label %134

; <label>:134:                                    ; preds = %131
  store i32 1, i32* @result, align 4, !tbaa !3
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0))
  br label %138

; <label>:136:                                    ; preds = %131
  store i32 0, i32* @result, align 4, !tbaa !3
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0))
  br label %138

; <label>:138:                                    ; preds = %136, %134
  %139 = load float, float* @fa, align 4, !tbaa !7
  %140 = load float, float* @fb, align 4, !tbaa !7
  %141 = fcmp oeq float %139, %140
  br i1 %141, label %142, label %144

; <label>:142:                                    ; preds = %138
  store i32 1, i32* @result, align 4, !tbaa !3
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0))
  br label %146

; <label>:144:                                    ; preds = %138
  store i32 0, i32* @result, align 4, !tbaa !3
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0))
  br label %146

; <label>:146:                                    ; preds = %144, %142
  %147 = load float, float* @fa, align 4, !tbaa !7
  %148 = load float, float* @fb, align 4, !tbaa !7
  %149 = fcmp une float %147, %148
  br i1 %149, label %150, label %152

; <label>:150:                                    ; preds = %146
  store i32 1, i32* @result, align 4, !tbaa !3
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0))
  br label %154

; <label>:152:                                    ; preds = %146
  store i32 0, i32* @result, align 4, !tbaa !3
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0))
  br label %154

; <label>:154:                                    ; preds = %152, %150
  %155 = load float, float* @fa, align 4, !tbaa !7
  %156 = load float, float* @fb, align 4, !tbaa !7
  %157 = fcmp ogt float %155, %156
  br i1 %157, label %158, label %160

; <label>:158:                                    ; preds = %154
  store i32 1, i32* @result, align 4, !tbaa !3
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0))
  br label %162

; <label>:160:                                    ; preds = %154
  store i32 0, i32* @result, align 4, !tbaa !3
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0))
  br label %162

; <label>:162:                                    ; preds = %160, %158
  %163 = load float, float* @fa, align 4, !tbaa !7
  %164 = load float, float* @fb, align 4, !tbaa !7
  %165 = fcmp olt float %163, %164
  br i1 %165, label %166, label %168

; <label>:166:                                    ; preds = %162
  store i32 1, i32* @result, align 4, !tbaa !3
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0))
  br label %170

; <label>:168:                                    ; preds = %162
  store i32 0, i32* @result, align 4, !tbaa !3
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0))
  br label %170

; <label>:170:                                    ; preds = %168, %166
  %171 = load float, float* @fa, align 4, !tbaa !7
  %172 = load float, float* @fb, align 4, !tbaa !7
  %173 = fcmp oge float %171, %172
  br i1 %173, label %174, label %176

; <label>:174:                                    ; preds = %170
  store i32 1, i32* @result, align 4, !tbaa !3
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0))
  br label %178

; <label>:176:                                    ; preds = %170
  store i32 0, i32* @result, align 4, !tbaa !3
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0))
  br label %178

; <label>:178:                                    ; preds = %176, %174
  %179 = load float, float* @fa, align 4, !tbaa !7
  %180 = load float, float* @fb, align 4, !tbaa !7
  %181 = fcmp ole float %179, %180
  br i1 %181, label %182, label %184

; <label>:182:                                    ; preds = %178
  store i32 1, i32* @result, align 4, !tbaa !3
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0))
  br label %186

; <label>:184:                                    ; preds = %178
  store i32 0, i32* @result, align 4, !tbaa !3
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0))
  br label %186

; <label>:186:                                    ; preds = %184, %182
  %187 = load double, double* @da, align 8, !tbaa !9
  %188 = fcmp une double %187, 0.000000e+00
  br i1 %188, label %189, label %191

; <label>:189:                                    ; preds = %186
  store i32 1, i32* @result, align 4, !tbaa !3
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  br label %193

; <label>:191:                                    ; preds = %186
  store i32 0, i32* @result, align 4, !tbaa !3
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  br label %193

; <label>:193:                                    ; preds = %191, %189
  %194 = load double, double* @da, align 8, !tbaa !9
  %195 = fcmp une double %194, 0.000000e+00
  br i1 %195, label %198, label %196

; <label>:196:                                    ; preds = %193
  store i32 1, i32* @result, align 4, !tbaa !3
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0))
  br label %200

; <label>:198:                                    ; preds = %193
  store i32 0, i32* @result, align 4, !tbaa !3
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0))
  br label %200

; <label>:200:                                    ; preds = %198, %196
  %201 = load double, double* @da, align 8, !tbaa !9
  %202 = load double, double* @db, align 8, !tbaa !9
  %203 = fcmp oeq double %201, %202
  br i1 %203, label %204, label %206

; <label>:204:                                    ; preds = %200
  store i32 1, i32* @result, align 4, !tbaa !3
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0))
  br label %208

; <label>:206:                                    ; preds = %200
  store i32 0, i32* @result, align 4, !tbaa !3
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0))
  br label %208

; <label>:208:                                    ; preds = %206, %204
  %209 = load double, double* @da, align 8, !tbaa !9
  %210 = load double, double* @db, align 8, !tbaa !9
  %211 = fcmp une double %209, %210
  br i1 %211, label %212, label %214

; <label>:212:                                    ; preds = %208
  store i32 1, i32* @result, align 4, !tbaa !3
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0))
  br label %216

; <label>:214:                                    ; preds = %208
  store i32 0, i32* @result, align 4, !tbaa !3
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0))
  br label %216

; <label>:216:                                    ; preds = %214, %212
  %217 = load double, double* @da, align 8, !tbaa !9
  %218 = load double, double* @db, align 8, !tbaa !9
  %219 = fcmp ogt double %217, %218
  br i1 %219, label %220, label %222

; <label>:220:                                    ; preds = %216
  store i32 1, i32* @result, align 4, !tbaa !3
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0))
  br label %224

; <label>:222:                                    ; preds = %216
  store i32 0, i32* @result, align 4, !tbaa !3
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0))
  br label %224

; <label>:224:                                    ; preds = %222, %220
  %225 = load double, double* @da, align 8, !tbaa !9
  %226 = load double, double* @db, align 8, !tbaa !9
  %227 = fcmp olt double %225, %226
  br i1 %227, label %228, label %230

; <label>:228:                                    ; preds = %224
  store i32 1, i32* @result, align 4, !tbaa !3
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0))
  br label %232

; <label>:230:                                    ; preds = %224
  store i32 0, i32* @result, align 4, !tbaa !3
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0))
  br label %232

; <label>:232:                                    ; preds = %230, %228
  %233 = load double, double* @da, align 8, !tbaa !9
  %234 = load double, double* @db, align 8, !tbaa !9
  %235 = fcmp oge double %233, %234
  br i1 %235, label %236, label %238

; <label>:236:                                    ; preds = %232
  store i32 1, i32* @result, align 4, !tbaa !3
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0))
  br label %240

; <label>:238:                                    ; preds = %232
  store i32 0, i32* @result, align 4, !tbaa !3
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0))
  br label %240

; <label>:240:                                    ; preds = %238, %236
  %241 = load double, double* @da, align 8, !tbaa !9
  %242 = load double, double* @db, align 8, !tbaa !9
  %243 = fcmp ole double %241, %242
  br i1 %243, label %244, label %246

; <label>:244:                                    ; preds = %240
  store i32 1, i32* @result, align 4, !tbaa !3
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0))
  br label %248

; <label>:246:                                    ; preds = %240
  store i32 0, i32* @result, align 4, !tbaa !3
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0))
  br label %248

; <label>:248:                                    ; preds = %246, %244
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @DoTest()
  ret i32 0
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !5, i64 0}
