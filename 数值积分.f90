Function f(x,T)
    Implicit None 
    Integer(kind=16) T
    Real(kind=16) f,x
    f =  2.0/(x**5*(exp(1.0/(x*T))-1.0))
End Function 

Program Main
    Implicit None 
    Integer(kind=16) N,i,j
    Integer(kind=16),Dimension(3)::T
    Real(kind=16),Dimension(3)::res
    Real(kind=16) a,b,delta
    Real(kind=16),external::f
    Do i = 1,3
        T(i) = i
    End Do
    Write(*,*)'Input a,b,N'
    Read(*,*)a,b,N
    delta = (b-a)/N
    Write(*,*)'zheng zai yun suan !'
    Do i = 1,N
        Do j = 1,3 
            res(j) = res(j) + (f(a+(i-1)*delta,T(j)) + f(a+i*delta,T(j)))*delta/2.0
        End Do
    End Do
    Write(*,*)'yun suan wan bi !'
    Write(*,*)(res(i)/((T(i)**4)),i=1,3)
    pause
End Program 