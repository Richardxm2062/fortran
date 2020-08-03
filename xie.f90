program main
    implicit none
    real a,b,c
    real x,x1,x2
    write(*,*) 'Enter a,b,c'
    read(*,*) a,b,c
    If(a==0) then
        write(*,*) 'a=0'
        If(b==0) then
            write(*,*) 'b=0'
            If(c==0) then
                write(*,*) 'c=0'
            Else
                write(*,*) 'no root'
            End If
        Else
            x=-c/b
            write(*,*) x
        End If
    Else
        x1=(-b+(b*b-4*a*c)**0.5)/(2*a)
        x2=(-b-(b*b-4*a*c)**0.5)/(2*a)
        write(*,*) x1,x2
    End If
    pause
End Program
                