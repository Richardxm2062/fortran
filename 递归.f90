Program Main
    Implicit None
    Integer N
    Real res
    Real,external::jiecheng
    Write(*,*)"Input the N"
    Read(*,*) N
    res = jiecheng(N)
    Write(*,*) jiecheng(N)
    pause
End Program 

Recursive Function jiecheng(N) result(res)
    Real res
    Integer N
    If (N>1)then 
        res = jiecheng(N-1)*N
    Else 
        res = 1
    End IF
    
End Function