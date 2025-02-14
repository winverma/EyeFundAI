# Capstone-2025
## An Integrative AI-based Approach for Non-Invasive Diabetic Retinopathy (DR) Detection using Fundus and Pupillometric Images.

Note: Add-Ons Required - Image Processing Toolbox, Statistics and Machine Learning Toolbox, GhostScript PDF Interpreter

-> Diabetic retinopathy (DR) is a leading cause of blindness among diabetic patients, with early stages often going unnoticed due to the lack of symptoms. Traditional diagnostic methods rely heavily on retinal imaging, which can be expensive, time-consuming, and difficult to access in remote areas.

-> Moreover, manual interpretation of these images by healthcare professionals can lead to delays in diagnosis and treatment. There is a need for an affordable, non-invasive, and efficient method to detect DR early.


-> The growing prevalence of diabetes has escalated the incidence of DR, especially in underserved and low-resource settings.

-> Current diagnostic methods, such as fundus photography and optical coherence tomography, while effective, are often inaccessible in underserved regions due to cost and infrastructure limitations.

-> Advances in artificial intelligence and deep learning have opened avenues for innovative diagnostic tools that leverage alternative biomarkers like pupil response patterns, offering a new perspective on DR detection.


-> The system analyzes pupil responses to light stimuli combined with advanced deep learning algorithms (ResNet, DenseNet, and EfficientNet) to classify DR into five severity levels. 

## Development Model:

-> Model Components includes Fundus Modelling, Doctor, Staff and Analytics Modules: (using Matlab)

- The Doctor can access the software interface using their unique id and then validate their authentication. Next they can update the patient data from the old one to new one and then generate and updated PDF with the information like: Patient Address, Contact, Sex, DOB, Name, Number, Patient ID, AAdhaar Number, Languages, Prev reference doctor, contact by Phone, Emp status - full time, email, time of visit, home loc hospital, external relative, acquaintance, then come  problems:; Medications:; Directives:; allergies? services due: Office visit, History of patient, symptoms, reson and chief complaint, hyperglycemic symptoms y/n polyuria y/n, polydi[psia y/n, blurred vison y/n then sympathimimetic symptoms, diaphoresis y/n, agitation, y/n, tremor y/n, palpitations y/n, insomnia y/n. nuerogylcogenic symptoms, like confusion y/n, lethargy y/n, somnolence y/n, amnesia y/n, stupor y/n, seizures, y/n, Then comes Review of systems, General, ENT Diagnosis, Cardivascular diagnosis, gastrointestinal, genitourinau=ry,, skin, nurologic, psychiatric, endocrine - polyuria, polydipsia,polyphagia, wiehgt change, cold or heat intolerance, then heme/lymphatics, allergic/immunologics?
next sec for vital signs like height weight,temp, pulse, rythm, bp: 
NExt comes the BLood report details...

then the analytics generate them graph for 5 levels of disease either DR or heart or glucome etc.

While the staff can access the fundus images and use them to genrate classified images (Computer Vision Analytics like Segmentations, CNN RNN, Contrast ratio adjustment, multiple iterations of sementations and Computer vision) and then the system will determine the disease using this processed fundus.

This approach aims to provide an early and accessible DR diagnosis solution without traditional retinal imaging. The user-friendly interface, ensures clinicians interpret results efficiently.


Themes Discovered:

- Increased focus on AI-driven healthcare diagnostics.

- Emerging interest in non-invasive diagnostic measures.

- Growing demand for accessible and cost-effective healthcare solutions.


Gaps Identified:

- Limited adoption of alternative biomarkers like pupillometry for DR detection.

- Insufficient tools to address accessibility challenges in low-resource settings.

- Lack of robust systems for real-time and accurate DR severity classification.


Advantages:
- Non-invasive and real-time measurements.
- Reduced dependency on specialized equipment and personnel.

Limitations:
- Sensitivity to environmental factors during data collection.
- Variability in pupil response across individuals.

Potential Risks:
- Misclassification due to noise in the data.

Ethical Issues:
- Ensuring informed consent for data collection.
- Maintaining patient confidentiality and data security.


-> The novelty of the EyeSight system lies in its unique integration of pupillometry and ensemble deep learning models for the non-invasive detection of diabetic retinopathy (DR). Traditional DR detection methods rely heavily on retinal imaging, which is expensive, requires specialized equipment, and is not always accessible in low-resource settings. EyeSight addresses these limitations by using pupil response to light stimuli as a diagnostic tool.

Key aspects of its novelty include:

- Non-invasive Diagnostic Approach: Unlike conventional retinal imaging, EyeSight utilizes pupillometry—a simple and non-invasive technique—to assess changes in the pupil's response, providing a safe and easily accessible alternative for DR detection.

- Multi-modal Ensemble Learning: Employs an ensemble deep learning architecture that combines the strengths of ResNet, DenseNet, and EfficientNet. This ensemble approach enhances the model's ability to detect subtle variations in pupil response, leading to more accurate DR classification across five distinct severity levels.

- Real-time, Early Detection: The system enables real-time DR diagnosis, allowing for early-stage detection even before clinical symptoms appear. This significantly improves the chances of timely intervention and reduces the risk of blindness.

- User-friendly Interface: The interface offers a simple, interactive platform that enables clinicians to easily interpret results. This makes EyeSight highly accessible to healthcare professionals, regardless of their expertise in deep learning or image analysis.

- Cost-effective and Accessible: By bypassing the need for expensive retinal imaging technologies, EyeSight provides a cost-effective solution that can be used in a variety of settings, particularly in regions with limited healthcare resources.


<p align="center">System Model</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/1cd96a25-a074-4d9e-8b3a-450389870f16" alt="image">
</p>

---

## **🚀 Installation & Usage**  
### **🔧 Prerequisites:**  
- MATLAB R2024b+ (Full Commercial Version for MedAI FundAI and Academic Version for Fundus Model) or later with required Add-Ons installed.  
- Access to medical fundus image datasets.  

### **📌 Running the Model**  
1. Clone the repository:  
   ```sh  
   git clone https://github.com/winverma/EyeFundAI.git  
   cd EyeFundAI
   ```  
2. Open MATLAB R2024b+ and run the main script:  
   ```matlab  
   run MHR_Admin.m (for MedAI) or FG.m (for Fundus Models)
   ```  
3. Authenticate as a **Doctor** or **Staff** to access features.  

---

## **📈 Future Enhancements:**  
- Integration with **Cloud Databases** for real-time medical records.  
- Support for **multi-language interfaces** for accessibility.  
- Implementation of **Explainable AI (XAI)** to improve transparency in diagnoses.  

---

## **🤝 Contributor(s):**  
- **[Win Verma](https://github.com/winverma)** – Lead Developer  

---

## **📜 License:**  
This project is licensed under the **Apache License 2.0**.  

