! Example code
program  example101

    implicit none
    real(kind=4) :: a,b,avg1,avg2
    
    write (*,*) '����������ʵ����:'
    read (*,*) a,b
    avg1=(a+b)/2.0
    avg2=(a*b)**0.5
    write (*,*) '����ƽ��ֵΪ:', avg1
    write (*,*) '����ƽ��ֵΪ:', avg2

end
