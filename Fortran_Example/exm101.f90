! Example code
program  example101

    implicit none
    real(kind=4) :: a,b,avg1,avg2
    
    write (*,*) '请输入两个实型数:'
    read (*,*) a,b
    avg1=(a+b)/2.0
    avg2=(a*b)**0.5
    write (*,*) '算术平均值为:', avg1
    write (*,*) '几何平均值为:', avg2

end
