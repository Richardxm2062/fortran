Program Main
    Implicit None
    Integer i,n
    Real s,x,h
    Real,external::f
    Write(*,*) 'Enter n'
    Read(*,*) n
    s = 0.0
    h = 1.0/n
    write(*,*)h
    Do i = 1,n
        x=h*(i-1)
        s=s+(h*(f(x)+f(x+1.0)))/2.0
    End Do
    Write(*,*) s
    pause
End

Function f(x)
    Real x,f
    f=1.0+exp(x)
End function