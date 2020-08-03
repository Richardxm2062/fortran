Program Mian 
    Implicit None 
    Real,Dimension(11)::arry
    Integer i,j  
    Real exchange
    arry(:) = 0.0
    Open(unit=10,file='paixu_in.txt')
    Open(unit=20,file='paixu_out.txt')
    Do i = 1,11
        Read(10,*) arry(i)
    End DO
    Do i = 1,11
        Do j = i+1,11
            If (arry(i)>arry(j)) then
                exchange = arry(i)
                arry(i) = arry(j)
                arry(j) = exchange
            End If 
        End Do  
    End Do 
    
    Do i = 1,11
        Write(20,*) arry(i)
    End Do 
    Close(10)
    Close(20)
    pause
End Program