; ModuleID = 'module.ll'
source_filename = "llvm"

define dso_local i32 @_Z7examplei(i32) {
  %2 = add nsw i32 %0, 7
  ret i32 %2
}
