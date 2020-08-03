Program Main
    Implicit None 
    Real,Dimension(2,3)::x
    x = reshape((/1.0,2.0,3.0,4.0,5.0,6.0/),(/2,3/))
    write(*,*)x(2,:) 
    Pause  
End Program 