; ModuleID = 'Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.4.17.sum-2-dimensional-array.c'
source_filename = "Repositories/twcamper-c-programming/Unfiltered/c-programming-master_12_12.4.17.sum-2-dimensional-array.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@main.table = private unnamed_addr constant [10 x [25 x i32]] [[25 x i32] [i32 207, i32 455, i32 849, i32 180, i32 286, i32 398, i32 1011, i32 482, i32 174, i32 499, i32 577, i32 312, i32 161, i32 297, i32 578, i32 1021, i32 494, i32 842, i32 280, i32 308, i32 210, i32 154, i32 981, i32 169, i32 139], [25 x i32] [i32 930, i32 122, i32 426, i32 190, i32 404, i32 181, i32 288, i32 762, i32 265, i32 555, i32 594, i32 1002, i32 1018, i32 434, i32 599, i32 489, i32 788, i32 225, i32 216, i32 961, i32 577, i32 578, i32 581, i32 394, i32 635], [25 x i32] [i32 96, i32 490, i32 46, i32 254, i32 22, i32 387, i32 936, i32 411, i32 511, i32 528, i32 13, i32 363, i32 105, i32 417, i32 740, i32 652, i32 142, i32 716, i32 902, i32 72, i32 347, i32 662, i32 180, i32 753, i32 833], [25 x i32] [i32 417, i32 619, i32 402, i32 15, i32 958, i32 459, i32 784, i32 758, i32 4, i32 136, i32 167, i32 424, i32 230, i32 89, i32 760, i32 1021, i32 648, i32 942, i32 431, i32 679, i32 531, i32 269, i32 833, i32 244, i32 648], [25 x i32] [i32 83, i32 63, i32 945, i32 372, i32 456, i32 223, i32 389, i32 45, i32 655, i32 803, i32 79, i32 488, i32 930, i32 229, i32 426, i32 910, i32 126, i32 793, i32 990, i32 560, i32 534, i32 532, i32 210, i32 192, i32 802], [25 x i32] [i32 479, i32 396, i32 451, i32 958, i32 772, i32 292, i32 396, i32 273, i32 323, i32 702, i32 262, i32 64, i32 208, i32 562, i32 898, i32 250, i32 769, i32 160, i32 667, i32 274, i32 540, i32 105, i32 421, i32 1014, i32 856], [25 x i32] [i32 788, i32 304, i32 1008, i32 88, i32 196, i32 712, i32 555, i32 148, i32 955, i32 196, i32 328, i32 252, i32 379, i32 76, i32 352, i32 199, i32 202, i32 156, i32 449, i32 80, i32 56, i32 190, i32 715, i32 383, i32 796], [25 x i32] [i32 613, i32 867, i32 681, i32 133, i32 939, i32 575, i32 362, i32 980, i32 271, i32 348, i32 724, i32 996, i32 1001, i32 819, i32 752, i32 378, i32 689, i32 877, i32 500, i32 966, i32 171, i32 324, i32 561, i32 127, i32 691], [25 x i32] [i32 865, i32 177, i32 950, i32 28, i32 866, i32 707, i32 688, i32 255, i32 244, i32 960, i32 71, i32 506, i32 128, i32 26, i32 443, i32 695, i32 887, i32 322, i32 1017, i32 548, i32 700, i32 174, i32 327, i32 35, i32 804], [25 x i32] [i32 432, i32 268, i32 225, i32 299, i32 783, i32 356, i32 222, i32 540, i32 729, i32 570, i32 778, i32 615, i32 284, i32 305, i32 399, i32 474, i32 895, i32 268, i32 593, i32 992, i32 863, i32 559, i32 457, i32 657, i32 420]], align 16

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x [25 x i32]], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [10 x [25 x i32]]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([10 x [25 x i32]]* @main.table to i8*), i64 1000, i1 false)
  %5 = getelementptr inbounds [10 x [25 x i32]], [10 x [25 x i32]]* %2, i32 0, i32 0
  %6 = bitcast [25 x i32]* %5 to i32*
  %7 = call i32 @sum_two_dimensional_array(i32 25, i32* %6, i32 10)
  store i32 %7, i32* %3, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sum_two_dimensional_array(i32, i32*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  store i32 0, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = mul nsw i64 0, %10
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32* %14, i32** %8, align 8
  br label %15

; <label>:15:                                     ; preds = %33, %3
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul nsw i64 %20, %10
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = icmp ule i32* %16, %26
  br i1 %27, label %28, label %36

; <label>:28:                                     ; preds = %15
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

; <label>:33:                                     ; preds = %28
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %8, align 8
  br label %15

; <label>:36:                                     ; preds = %15
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
