function build_cos_plots()
    f1(x) = 1-(x^2)/2
    f2(x) = f1(x) + (x^4)/factorial(4)
    f3(x) = f2(x) - (x^6)/factorial(6) + (x^8)/factorial(8)
    f4(x) = f3(x) - (x^10)/factorial(10) + (x^12)/factorial(12) - (x^14)/factorial(14) + (x^16)/factorial(16)
    p=plot(f1) # for i in (f1,f2,f3,f4) не работает
    plot!(f2)
    plot!(f3)
    plot!(f4)
end
