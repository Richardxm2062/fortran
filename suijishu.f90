Function randomnum()
    Implicit None 
    Integer(kind=16),save::seed = 13
    Integer(kind=16) M 
    Real(kind=16) randomnum
    M = 2**31 - 1.0
    seed = Mod(16807*seed,M)
    randomnum = 1.0*seed/M 
End Function

Function f(x,y,z,w)
    Implicit None 
    Real(kind=16) x,y,z,w,f
    f = x + y**3 + z**5 + w**7
End Function 


Program Main 
    Implicit None 
    Real(kind=16) x,y,z,w,sum
    Integer(kind=16) i,N 
    Real(kind=16),external::f,randomnum
    Real(kind=16) c
    c = 1.0/2 + 1.0/4 + 1.0/6 + 1.0/8
    sum = 0.0 
    Write(*,*) "Input the N " 
    Read(*,*) N 
    Do i = 1,N
        x = randomnum()
        y = randomnum()
        z = randomnum()
        w = randomnum()
        sum = sum + f(x,y,z,w)
    End Do 
    sum = sum / N 
    Write(*,*) sum,c
    Pause 
End Program 