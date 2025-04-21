# MedAI (Medical Eye Diagnostics AI) - EyeFundAI 
## A Multi-Stage Deep Neural Pipeline Leveraging CNN-FFNN Synergy for High-Fidelity Fundus Image Analysis and Diabetic Retinopathy Grading and Detection.

#### ***Note: Add-Ons Required - Image Processing Toolbox, Statistics and Machine Learning Toolbox, GhostScript PDF Interpreter.***

---

https://github.com/user-attachments/assets/03f8aef3-8dd6-4587-aa15-3f72d7cf2c95

---

-> Diabetic Retinopathy (DR) is a leading cause of blindness among diabetic patients, with early stages often going unnoticed due to the lack of symptoms. 

With a little bit of research, one can deduce out the limitations prevailing the market:

- Traditional diagnostic methods rely heavily on retinal imaging, which can be expensive, time-consuming, and difficult to access in remote areas.
- Moreover, manual interpretation of these images by healthcare professionals can lead to delays in diagnosis and treatment. 
- There is a need for an affordable, non-invasive, and efficient method to detect DR and Glaucoma.

-> The growing prevalence of diabetes has escalated the incidence of DR, especially in underserved and low-resource settings. 

-> Current diagnostic methods, such as fundus photography and optical coherence tomography, while effective, are often inaccessible in underserved regions due to cost and infrastructure limitations.

-> Advances in artificial intelligence and deep learning have opened avenues for innovative diagnostic tools that leverage alternative biomarkers like pupil response patterns, offering a new perspective on DR detection.

-> The system analyzes pupil responses to light stimuli combined with advanced deep learning algorithms (ResNet, DenseNet, and EfficientNet) to classify DR into five severity levels. While the staff can access the fundus images and use them to generate classified images (CV Analytics like Segmentations, combination of CNN (Convolution Neural Network) and FFNN (Feed Forward Neural Network), Contrast Ratio Adjustments through multiple iterations of the Segmentations), the system will determine the disease using the processed fundus image input real quick.

-> Built using MATLAB, the system integrates ***Fundus Modelling, Doctor, Staff, and Analytics Modules*** to enhance medical diagnosis, patient management, and disease prediction.

-> This approach aims to provide an early and accessible DR diagnosis solution without traditional retinal imaging, while the user-friendly interface ensures clinicians interpret results efficiently.

<p align="center">
  <img src="https://github.com/user-attachments/assets/dc74ff0e-c208-47a9-9b0c-5687bba6a94f" alt="image">
  <p align="center">Figure 1: Block Diagram</p>
</p>

---

<p align="center">
  <img src="https://github.com/user-attachments/assets/33aba5d4-4a1e-431b-a990-5a0e24d9a045" alt="image">
  <p align="center">Figure 2: Confidence Distribution Plot for DR Staging></p>
</p>

#### Main Highlight: This multi-modal AI-driven diagnostic system integrates Convolutional Neural Networks (CNNs) and Feed Forward Neural Networks (FFNNs) as primary architectures, with Recurrent Neural Networks (RNNs) playing a supporting role. Our approach fuses fundus images and retinal feature data, leveraging Vision Transformers (ViTs) and explainable AI techniques to enhance trust and clinical applicability. The model achieved an AUC-ROC score of 0.96, surpassing ResNet (0.91) and DenseNet (0.92), while maintaining precision, recall, and F1-score above 90% across most DR severity classes. A confidence-based classification approach significantly reduced false negatives by 15% in early-stage DR cases, while ensemble learning provided a 7% accuracy boost over individual CNN models. Cross-validation confirmed the robustness of the model, with a p-value < 0.05, reinforcing statistical significance. Preprocessing techniques such as CLAHE, response normalization, and data augmentation were crucial in enhancing image quality and reducing class imbalance.




### Themes Discovered:

- Increased focus on AI-driven healthcare diagnostics.

- Emerging interest in non-invasive diagnostic measures.

- Growing demand for accessible and cost-effective healthcare solutions.


### Gaps Identified:

- Limited adoption of alternative biomarkers like pupillometry for DR detection.

- Insufficient tools to address accessibility challenges in low-resource settings.

- Lack of robust systems for real-time and accurate DR severity classification.


### Advantages:
- Non-invasive and real-time measurements.
- Reduced dependency on specialized equipment and personnel.

### Limitations:
- Sensitivity to environmental factors during data collection.
- Variability in pupil response across individuals.

### Potential Risks:
- Misclassification due to noise in the data.

### Ethical Issues:
- Ensuring informed consent for data collection.
- Maintaining patient confidentiality and data security. 


The novelty of the EyeFundAI system lies in its unique integration of pupillometry and ensemble deep learning models for the non-invasive detection of diabetic retinopathy (DR). Traditional DR detection methods rely heavily on retinal imaging, which is expensive, requires specialized equipment, and is not always accessible in low-resource settings. EyeFundAI addresses these limitations by using pupil response to light stimuli as a diagnostic tool.

Key aspects of its novelty include:

- Non-invasive Diagnostic Approach: Unlike conventional retinal imaging, EyeFund utilizes pupillometry—a simple and non-invasive technique—to assess changes in the pupil's response, providing a safe and easily accessible alternative for DR detection.

- Multi-modal Ensemble Learning: Employs an ensemble deep learning architecture that combines the strengths of ResNet, DenseNet, and EfficientNet. This ensemble approach enhances the model's ability to detect subtle variations in pupil response, leading to more accurate DR classification across five distinct severity levels.

- Real-time, Early Detection: The system enables real-time DR diagnosis, allowing for early-stage detection even before clinical symptoms appear. This significantly improves the chances of timely intervention and reduces the risk of blindness.

- User-friendly Interface: The interface offers a simple, interactive platform that enables clinicians to easily interpret results. This makes EyeFund highly accessible to healthcare professionals, regardless of their expertise in deep learning or image analysis.

- Cost-effective and Accessible: By bypassing the need for expensive retinal imaging technologies, EyeFund provides a cost-effective solution that can be used in a variety of settings, particularly in regions with limited healthcare resources.

---

## **📌 Features**  

### **🔬 Fundus Modelling & Computer Vision Analytics**  
- **Segmentation & Classification:** Using CNN, FFNN, and contrast ratio adjustments to enhance fundus images.  
- **Multiple Iterations of Segmentation:** Improves disease detection accuracy.  
- **Automated Disease Prediction:** Identifies **Diabetic Retinopathy (DR), Glaucoma, and Cardiovascular Risks**.  

### **👨‍⚕️ Doctor Module**  
- Secure **Login Authentication** with a unique ID.  
- **Patient Record Management:** Update, track, and modify patient details.  
- **Automated PDF Report Generation** with patient details, symptoms, and medical history, including:  
  - **Personal Details:** Name, Address, DOB, Aadhar Number, Contact, etc.  
  - **Medical History:** Medications, previous diagnoses, allergies, directives.  
  - **Symptoms Analysis:**  
    - **Hyperglycemic Symptoms:** Polyuria, Polydipsia, Blurred Vision.  
    - **Sympathomimetic Symptoms:** Tremors, Palpitations, Insomnia.  
    - **Neuroglycogenic Symptoms:** Confusion, Seizures, Amnesia.  
  - **Vital Signs & Blood Reports:** Height, Weight, BP, Pulse, Blood Test Reports.  

### **👩‍⚕️ Staff Module**  
- **Fundus Image Processing** with AI-powered segmentation.  
- **Automated Classification of Retinal Diseases.**  
- **Contrast Adjustments & Iterative Improvements** for accurate detection.  

### **📊 Analytics Module**  
- Generates **disease progression graphs** for DR, heart disease, and glaucoma.  
- Tracks **patient trends** over time using medical records & fundus images.

---

## **🛠️ Tech Stack**  
- **Programming Language:** MATLAB  
- **Machine Learning & AI:** CNN, FFNN, Image Segmentation, Computer Vision  
- **Data Processing:** MATLAB Image Processing and Statistics Toolbox  
- **Authentication & Data Management:** Secure Patient Records - MHR_Admin file (Medical Health Records Administrator)  

---

## **📦 Required MATLAB Add-Ons**  
Before running the project, install the following **MATLAB toolboxes and dependencies:**  
1. **Image Processing Toolbox** – For fundus image enhancement and segmentation.  
2. **Statistics and Machine Learning Toolbox** – For AI-based classification and analytics.  
3. **GhostScript PDF Interpreter** – To generate medical reports in PDF format.  

To install, run the following command in MATLAB:  
```matlab  
matlab.addons.install('image-processing-toolbox')
matlab.addons.install('statistics-and-machine-learning-toolbox')  
```
### ***Finally, install GhostScript 10.04.0+ (64-Bit) AGPL Release.***
---

### **📸 Fundus Image Processing Workflow**  
1. **Image Acquisition:** Load fundus images from medical databases.  
2. **Preprocessing:** Contrast enhancement, noise reduction and image augmentations for better input quality & segmentations over multiple iterations.  
3. **Segmentation & Classification:** CNN & FFNN Ensemble models classify DR stages or other diseases.  
4. **Prediction & Visualization:** Disease status graphs & automated reports.

<p align="center">Figure 3: System Model for Deep Learning and Analytics Pipeline</p>

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

<p align="center">Thank you for scrolling all the way!</p>
<p align="center"><a href="#top"><img src="https://img.shields.io/badge/-Back%20to%20Top-orange?style=for-the-badge" /></a></p>
