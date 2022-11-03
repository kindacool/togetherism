ClassicEditor 
    .create( document.querySelector( ‘#notice_content' ) ) 
    .then( editor => { 
        console.log( editor ); 
    } ) 
    .catch( error => { 
        console.error( error ); 
    } );