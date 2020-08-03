program main
    implicit none
    complex i
    real a,b,c
    real x,x1,x2
    complex x3,x4
    write(*,*) 'enter'
    read(*,*) a,b,c
    i = (0,1) 
    write(*,*)i
    if (a==0) then
        write(*,*) 'a=0'
        if (b==0) then
            write(*,*) 'b=0'
            if (c==0) then
                write(*,*) 'c=0,no'
            else
                write(*,*) 'no'
            end if
        else
            x=-c/b
            write(*,*) x
        end if
    else 
        if (b**2-4*a*c==0) then
             x=(-b)/(2*a)
             write(*,*) x
        else If (b**2-4*a*c<0) then
             x3=complex(-b/(2*a),((-b*b+4*a*c)**0.5)/(2*a))
             x4=complex(-b/(2*a),-((-b*b+4*a*c)**0.5)/(2*a))
             write(*,*) x3,x4
        else 
             x1=(-b+(b*b-4*a*c)**0.5)/(2*a)
             x2=(-b-(b*b-4*a*c)**0.5)/(2*a)
             write(*,*) x1,x2
        end if
    end if
    pause
end program
                