Program Main 
    Implicit None
    Integer i,N 
    Real sum,avg
    Real,Dimension(:),allocatable::sc
    Write(*,*)"Input the N"
    Read(*,*) N 
    allocate(sc(N))
    Write(*,*)"Inpput the score"
    Do i = 1,N 
        Read(*,*) sc(i)
    End Do
    Do i = 1,N 
        sum = sum + sc(i)
    End Do
    avg = sum/N
    Write(*,*)"avg is",avg
    pause
End Program 