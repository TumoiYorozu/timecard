#include <iostream>
#include <string>

using namespace std;


const string Project="Tumoi Yorozu";


int main(){
	string s,e,c,com;
	string Y,m,d,a,H,M,S;
	int st,et,du,total=0;
	s=e=c="";
	
	while(cin >> com){
		
		if(com=="S"){
			cin >> Y>>m>>d>>a>>H>>M>>S;
			//cout <<Y<<m<<d<<a<<H<<M<<S;
			s=a+"\t"+Y+"-"+m+"-"+d+"\t"+H+":"+M;
			st=(stoi(d)*24+stoi(H))*60+stoi(M);
		}else if(com=="E"){
			cin >> Y>>m>>d>>a>>H>>M>>S;
			et=(stoi(d)*24+stoi(H))*60+stoi(M);
			du=et-st;
			total+=du;
			cout << Project << "\t" << c<<"\t" << s<<"\t"<<(du/60)<<":"<<(du%60)<<"\t"<<(total/60)<<":"<<(total%60)<<endl;
		}else if(com=="C"){
			cin >> Y>>m>>d>>a>>H>>M>>S;
			getline(cin,c);
		}else{
			cerr<<"不明なコマンド:"<<com<<endl;
			return 1;
		}


	}










	return 0;
}
