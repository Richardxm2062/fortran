Program Main
    Implicit None 
    Real,Dimension(0:50,0:30):: v,f
    Real,Dimension(100000)::x
    Integer i,j,t
    Real w,h
    Open(10,file='chaosongchi.txt')
    v(:,:)=0.1
    Write(*,*)"Input the w"
    Read(*,*)w
    Do i = 0,50
        Do j = 0,30
            If (i==25 .and. j==15) then
                f(25,15) = -50.0
            Else 
                f(i,j) = 0.0
            End If 
        End Do 
    End DO
    x(:) = 0.0
    x(1) = 100
    t = 1
    h = 0.01
    Do While (abs(x(t+1)-x(t))>0.00001)
        Do i = 0,49
            Do j = 0,29
                If (i==25 .and. j==15) then 
                    x(t) = v(25,15)
                Else 
                    v(i,j) = v(i,j) + (w/4)*(v(i+1,j)+v(i,j+1)+v(i-1,j)+v(i,j-1)-4*v(i,j)-(h**2)*f(i,j)) 
                End If 
            End Do 
        End Do 
        t = t + 1 
    End DO 
    Write(10,*) v(:,:)
    Write(*,*) t
    Close(10)
    Pause
End Program 
!迭代停止有待改进