import { LightningElement,api } from 'lwc';

import{ShowToastEvent} from 'lightning/platformShowToastEvent';

export default class FileUploadCompo extends LightningElement {
@api recordId;
get acceptedformats(){
    return ['.pdf','.jpeg'];
}
handleUploadFinished(event){

    const  uploadedFiles = event.detail.files;
    let uploadedFileNames ='';
    for (let i = 0; i < uploadedFiles.length; i++ ) {
        uploadedFileNames += uploadedFiles[i].name + ',' ;
    }
this.dispatchEvent(
    new ShowToastEvent({
        title: 'success',
        message : uploadedFiles.length + 'files uploaded Successfully:' + uploadedFileNames,
        variant: 'success',
    }),
);

}


}