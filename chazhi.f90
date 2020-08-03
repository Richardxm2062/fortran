Program Main 
    Implicit None 
    Real,Dimension(10)::xx,yy
    Real,Dimension(5)::x0,y0
    Integer i
    External::chazhi 
    Open(10,file='chazhi_x.txt')
    Open(20,file='chazhi_y.txt')
    Open(30,file='chazhi_dianx.txt')
    Open(40,file='chazhi_diany.txt')
    
    Do i = 1,10
        Read(10,*)xx(i)
        Read(20,*)yy(i)
    End Do
    Close(10)
    Close(20)
    Do i = 1,5
        Read(30,*)x0(i)
    End Do
    Close(30)
    
    Do i = 1,5 
        call chazhi(xx,yy,10,x0(i),y0(i))
    End Do 
    Do i = 1,5 
        Write(40,*) y0(i)
    End Do 
    Close(40)
    !Write(*,*) (abs(y0(i)-sqrt(x0(i))),i=1,5)
    pause
End Program 

Subroutine chazhi(xx,yy,N,x,y)
    Implicit None
    Integer N,istar,ii,jj
    Real,Dimension(N)::xx,yy
    Real x,y 
    Real pcoff
    If (x<xx(2))then 
        istar = 1
    ElseIf (x>=xx(N-1))then 
        istar = N-2
    Else
        Do ii = 2,N-2
            If (x<xx(ii+1) .and. x>xx(ii)) then 
                If (x<(xx(ii)+xx(ii+1))/2.0) then 
                    istar = ii-1
                Else 
                    istar = ii
                End If
            Exit     
            End If  
        End Do  
    End IF
    y = 0.0 
    Do ii = istar,istar+2 !求和
        pcoFf = 1.0  !每次求和后这个值归为1
        Do jj = istar,istar+2 !连乘
            If (jj==ii) cycle 
            pcoff = pcoff*(x-xx(jj))/((xx(ii)-xx(jj))) !连乘的方法
        End Do 
        y =  y + pcoff*yy(ii)   
    End Do 
    Write(*,*)y
End Subroutine