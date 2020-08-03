Program Main
    Implicit None 
    Integer i 
    Real,Dimension(10)::x,y,s
    Real,Dimension(9)::a,b,c,d,h
    Real,External::trid
    Open(10,file='yangtiao_x.txt')
    Open(20,file='yangtiao_y.txt')
    Do i = 1,10 
        Read(10,*)x(i)
        Read(20,*)y(i) 
    End Do 
    Do i = 1,9
        h(i) = x(i+1) - x(i)
    End Do 
    Do i = 1,9
        a(i) = y(i)
        b(i) = 
    End Do 
    
    Close(10)
    Close(20)
    pause 
End Program 

Subroutine trid(N,A,B,C,f,s)
    Implicit None 
    Integer N 
    Real,Dimension(N)::A,B,C,f
    Real,Dimension(N+1)::s
    S(N+1) = 0
    A(:) = 1
    B(:) = 4
    C(:) = 1
    Do i = 1,N-1
        C(i) = C(i)/B(i)
        f(i) = f(i)/B(i)
        B(i+1) = B(i+1) - A(i)*C(i)
        f(i+1) = f(i+1) - A(i)*f(i) 
    End Do 
    s(N) = f(N)/B(N)
    Do i = N-1,1
        s(i) = f(i) - C(i)*s(i+1)
    End Do
End Subroutine     