function lst = generate_uniform(N, imin, imax, alpha)
    
    comp=randi([imin,imax],1,N);
    
    lst=cell(N,1);
    
    for i=1:N
        x=randi([1,length(alpha)],1,comp(i));
        word = alpha(x);
        lst{i} = word;
        %fprintf(1,'%3d, %3d - %s\n', i, comp(i),word);
    end

end