Return-Path: <open-iscsi+bncBDO5ZHG7YMOBBTP533XQKGQEAVHRM5Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5161211B9
	for <lists+open-iscsi@lfdr.de>; Mon, 16 Dec 2019 18:28:46 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id d9sf5060839qtq.13
        for <lists+open-iscsi@lfdr.de>; Mon, 16 Dec 2019 09:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=oFNb5dt+YdcAnL4iHVRsafAZWfoUmMpKWoPCTAcX/v4=;
        b=I9/PIzzYWa2WPjn1CTI0YVCFgjUHDljL2vxqwdT3tr0VqmFTBWcEBL83wmRMAxVnKw
         kdaI38+RlXAzrEP3gvad427hUjd/aB2+E5wyIWUf7T2jjJH8Jt4GE037sEKi1O8PM7jb
         0ncXZRkKgrqsPdCQ94hBjnuEly6cmQXUyrYMgEbX7yqgXonjteF//aIbuuGW37dVY9Jm
         tkmA1n3rk+bNlqX6O5N3sPp8uWRj7r9ml7I2gKbzzebWaKBaAwNdPUGbGvZtzdwD7usM
         hu9WN8SjMc6RLSBW1ZIFGFMHgA8aEP3pgDpXEdF6Q7qMxiX7BJ0HiaeFIRtTKx4qsrb/
         01yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oFNb5dt+YdcAnL4iHVRsafAZWfoUmMpKWoPCTAcX/v4=;
        b=nfO7ZOYgA0FJK+CFjBwUKMrXQt2BJcBTvp3B+uy/YCfUxFEEjcGSJod7zI+KS3MQrv
         n6ProrA/5qGGrZoPIzRfU4eqWXVgQFCNkPeR0y9oo2dMvcic2aLxtD6CU1UOmCYTiiU8
         N5DxfO7JFLMySr+fDKnZReosJNbV7wt2kLmJF+QDWiraMqGlC+d5H43NZhpS1jW4ZYPh
         zuyaSRoOeX5I1LAPazn39Vw6EIZFunmnYfS/HuKSzlEXuUjsq531jv58x9fHNekflROh
         iL0l19JXB+23bogZOR+Lmepm903OHSKjCzfZoaYlKUPEMLwFKo9IZgLk9W1ayi3f5u/f
         +2dg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAV78U75db3kbsoyPTcmCRDHu9vbcuC9w8gYx8MDiRC0ISgIIY9o
	jWbnWYLfQw+XA7vmMFpTEeA=
X-Google-Smtp-Source: APXvYqxs/TGdMDyLbRi6PvoybDcHXLwfYpgHW2xdjmbjRwKTX4BneuVNf0g5FmTvdcudWtpl1qq3Kg==
X-Received: by 2002:a0c:8361:: with SMTP id j88mr412562qva.32.1576517325469;
        Mon, 16 Dec 2019 09:28:45 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:ac11:: with SMTP id e17ls5511855qkm.7.gmail; Mon, 16 Dec
 2019 09:28:45 -0800 (PST)
X-Received: by 2002:a37:648c:: with SMTP id y134mr358072qkb.175.1576517325309;
        Mon, 16 Dec 2019 09:28:45 -0800 (PST)
Received: by 2002:a37:4ad0:0:0:0:0:0 with SMTP id x199msqka;
        Sat, 14 Dec 2019 02:53:22 -0800 (PST)
X-Received: by 2002:a37:4e4e:: with SMTP id c75mr17986249qkb.310.1576320801473;
        Sat, 14 Dec 2019 02:53:21 -0800 (PST)
Date: Sat, 14 Dec 2019 02:53:20 -0800 (PST)
From: lameirat@gmail.com
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <1a497c10-4202-42b4-babd-7678dc409f10@googlegroups.com>
In-Reply-To: <4F68D0B8.9020501@cs.wisc.edu>
References: <48f8341e-9b18-47dd-9e26-8285a241a86a@x10g2000pbi.googlegroups.com>
 <4F68D0B8.9020501@cs.wisc.edu>
Subject: Re: Unable to discover targets.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_598_1194793226.1576320801015"
X-Original-Sender: lameirat@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_598_1194793226.1576320801015
Content-Type: multipart/alternative; 
	boundary="----=_Part_599_1064405043.1576320801016"

------=_Part_599_1064405043.1576320801016
Content-Type: text/plain; charset="UTF-8"

That's it. thak you so much!! you saved my time

On Tuesday, 20 March 2012 18:47:20 UTC, Mike Christie wrote:
>
> On 03/17/2012 03:55 PM, arvind ks wrote:
> > Hi Guys,
> > I have created a Redhat 5 VM and a Openfiler VM in a VMTeam. I have
> > given them 2 ethernet cards. One as a lan segment and other as a
> > bridged. Both VMs are able to communicate. I have assigned these IPS.
> > 
> > Open Filer:: 192.168.10.4 HostName: "openfiler"
> > RedHat 5::192.168.10.1 Hostname: "arvindlinux"
> > 
> > Both are able to communicate with each other and i am able to SSH from
> > Redhat to Openfiler and from Openfiler to Redhat. I have followed the
> > link below for sharing a volume from  Openfiler to the Redhat  host.
> > 
> http://www.idevelopment.info/data/Unix/Linux/LINUX_ConnectingToAniSCSITargetWithOpen-iSCSIInitiatorUsingLinux.shtml
> > 
> > As mentioned in the article i've created a Volume and Shared it with
> > Linux Host and have given ALLOW access.
> > 
> > But when i run this i dont see any output..
> > 
> > In the Configure the iSCSI (Initiator) Service step::
> > 
> > [root@arvindlinux ~]# iscsiadm -m discovery -t sendtargets -p
> > openfiler
> > [root@arvindlinux ~]#
> > ( DONT SEE ANY OUTPUT ABOVE)
> > 
>
> Do
>
> iscsiadm -m discovery -t sendtargets -p openfiler -d 8
>
>
> and send the output. This normally happens when using have set the ip
> address for openfiler to a non iscsi address (so it was meant as just a
> sort of admin ip on the target) or they did not have targets mapped on
> the target properly or they did not have the initiatorname
> (/etc/iscsi/initiatorname.iscsi) mapped on the target properly.
>
>
> > If i use openfiler-san as he has used in the example i get the below
> > error.
> > 
> > [root@arvindlinux ~]# iscsiadm -m discovery -t sendtargets -p
> > openfiler-san
> > iscsiadm: cannot make connection to 66.114.124.140:3260 (111)
> > iscsiadm: connection to discovery address 66.114.124.140 failed
> > iscsiadm: cannot make connection to 66.114.124.140:3260 (111)
> > iscsiadm: connection to discovery address 66.114.124.140 failed
> > iscsiadm: cannot make connection to 66.114.124.140:3260 (111)
> > iscsiadm: connection to discovery address 66.114.124.140 failed
> > iscsiadm: cannot make connection to 66.114.124.140:3260 (111)
> > iscsiadm: connection to discovery address 66.114.124.140 failed
> > iscsiadm: cannot make connection to 66.114.124.140:3260 (111)
> > iscsiadm: connection to discovery address 66.114.124.140 failed
> > iscsiadm: connection login retries (reopen_max) 5 exceeded
> > [root@arvindlinux ~]#
> > 
>
> Are you sure you enabled the iscsi target service on openfiler and are
> you sure you restarted the service?
>
> 111 is Connection refused by the target. It would not let us open a
> tcp/ip connection to that address.
>
> > In the link given he got the below output.
> > [root@linux3 ~]# iscsiadm -m discovery -t sendtargets -p openfiler1-
> > san
> > 192.168.2.195:3260,1 iqn.2006-01.com.openfiler:scsi.linux3-data-1
> > 
> > Thanks in advance,
> > Arvind
> > 
> > 
> > 
> > 
> > 
> > 
> > 
> > 
> > 
> > 
> > 
> > 
> > 
> > 
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1a497c10-4202-42b4-babd-7678dc409f10%40googlegroups.com.

------=_Part_599_1064405043.1576320801016
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That&#39;s it. thak you so much!! you saved my time<br><br=
>On Tuesday, 20 March 2012 18:47:20 UTC, Mike Christie  wrote:<blockquote c=
lass=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px=
 #ccc solid;padding-left: 1ex;">On 03/17/2012 03:55 PM, arvind ks wrote:<br=
>&gt; Hi Guys,<br>&gt; I have created a Redhat 5 VM and a Openfiler VM in a=
 VMTeam. I have<br>&gt; given them 2 ethernet cards. One as a lan segment a=
nd other as a<br>&gt; bridged. Both VMs are able to communicate. I have ass=
igned these IPS.<br>&gt; <br>&gt; Open Filer:: 192.168.10.4 HostName: &quot=
;openfiler&quot;<br>&gt; RedHat 5::192.168.10.1 Hostname: &quot;arvindlinux=
&quot;<br>&gt; <br>&gt; Both are able to communicate with each other and i =
am able to SSH from<br>&gt; Redhat to Openfiler and from Openfiler to Redha=
t. I have followed the<br>&gt; link below for sharing a volume from =C2=A0O=
penfiler to the Redhat =C2=A0host.<br>&gt; <a href=3D"http://www.idevelopme=
nt.info/data/Unix/Linux/LINUX_ConnectingToAniSCSITargetWithOpen-iSCSIInitia=
torUsingLinux.shtml" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this=
.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fwww.idevelopment.i=
nfo%2Fdata%2FUnix%2FLinux%2FLINUX_ConnectingToAniSCSITargetWithOpen-iSCSIIn=
itiatorUsingLinux.shtml\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNG8Lafc-gt-9=
H3bf9aVMdx9eUzxhw&#39;;return true;" onclick=3D"this.href=3D&#39;http://www=
.google.com/url?q\x3dhttp%3A%2F%2Fwww.idevelopment.info%2Fdata%2FUnix%2FLin=
ux%2FLINUX_ConnectingToAniSCSITargetWithOpen-iSCSIInitiatorUsingLinux.shtml=
\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNG8Lafc-gt-9H3bf9aVMdx9eUzxhw&#39;;=
return true;">http://www.idevelopment.info/<wbr>data/Unix/Linux/LINUX_<wbr>=
ConnectingToAniSCSITargetWithO<wbr>pen-iSCSIInitiatorUsingLinux.<wbr>shtml<=
/a><br>&gt; <br>&gt; As mentioned in the article i&#39;ve created a Volume =
and Shared it with<br>&gt; Linux Host and have given ALLOW access.<br>&gt; =
<br>&gt; But when i run this i dont see any output..<br>&gt; <br>&gt; In th=
e Configure the iSCSI (Initiator) Service step::<br>&gt; <br>&gt; [root@arv=
indlinux ~]# iscsiadm -m discovery -t sendtargets -p<br>&gt; openfiler<br>&=
gt; [root@arvindlinux ~]#<br>&gt; ( DONT SEE ANY OUTPUT ABOVE)<br>&gt; <p>D=
o</p><p>iscsiadm -m discovery -t sendtargets -p openfiler -d 8</p><p><br>an=
d send the output. This normally happens when using have set the ip<br>addr=
ess for openfiler to a non iscsi address (so it was meant as just a<br>sort=
 of admin ip on the target) or they did not have targets mapped on<br>the t=
arget properly or they did not have the initiatorname<br>(/etc/iscsi/initia=
torname.<wbr>iscsi) mapped on the target properly.</p><p><br>&gt; If i use =
openfiler-san as he has used in the example i get the below<br>&gt; error.<=
br>&gt; <br>&gt; [root@arvindlinux ~]# iscsiadm -m discovery -t sendtargets=
 -p<br>&gt; openfiler-san<br>&gt; iscsiadm: cannot make connection to <a hr=
ef=3D"http://66.114.124.140:3260" target=3D"_blank" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F66.11=
4.124.140%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNG4CgtqVRbnFyAocuku=
1EMUwhLTTQ&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.google=
.com/url?q\x3dhttp%3A%2F%2F66.114.124.140%3A3260\x26sa\x3dD\x26sntz\x3d1\x2=
6usg\x3dAFQjCNG4CgtqVRbnFyAocuku1EMUwhLTTQ&#39;;return true;">66.114.124.14=
0:3260</a> (111)<br>&gt; iscsiadm: connection to discovery address 66.114.1=
24.140 failed<br>&gt; iscsiadm: cannot make connection to <a href=3D"http:/=
/66.114.124.140:3260" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"thi=
s.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F66.114.124.140%3A=
3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNG4CgtqVRbnFyAocuku1EMUwhLTTQ&#=
39;;return true;" onclick=3D"this.href=3D&#39;http://www.google.com/url?q\x=
3dhttp%3A%2F%2F66.114.124.140%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQj=
CNG4CgtqVRbnFyAocuku1EMUwhLTTQ&#39;;return true;">66.114.124.140:3260</a> (=
111)<br>&gt; iscsiadm: connection to discovery address 66.114.124.140 faile=
d<br>&gt; iscsiadm: cannot make connection to <a href=3D"http://66.114.124.=
140:3260" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#3=
9;http://www.google.com/url?q\x3dhttp%3A%2F%2F66.114.124.140%3A3260\x26sa\x=
3dD\x26sntz\x3d1\x26usg\x3dAFQjCNG4CgtqVRbnFyAocuku1EMUwhLTTQ&#39;;return t=
rue;" onclick=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F=
%2F66.114.124.140%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNG4CgtqVRbn=
FyAocuku1EMUwhLTTQ&#39;;return true;">66.114.124.140:3260</a> (111)<br>&gt;=
 iscsiadm: connection to discovery address 66.114.124.140 failed<br>&gt; is=
csiadm: cannot make connection to <a href=3D"http://66.114.124.140:3260" ta=
rget=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www=
.google.com/url?q\x3dhttp%3A%2F%2F66.114.124.140%3A3260\x26sa\x3dD\x26sntz\=
x3d1\x26usg\x3dAFQjCNG4CgtqVRbnFyAocuku1EMUwhLTTQ&#39;;return true;" onclic=
k=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F66.114.12=
4.140%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNG4CgtqVRbnFyAocuku1EMU=
whLTTQ&#39;;return true;">66.114.124.140:3260</a> (111)<br>&gt; iscsiadm: c=
onnection to discovery address 66.114.124.140 failed<br>&gt; iscsiadm: cann=
ot make connection to <a href=3D"http://66.114.124.140:3260" target=3D"_bla=
nk" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/=
url?q\x3dhttp%3A%2F%2F66.114.124.140%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\=
x3dAFQjCNG4CgtqVRbnFyAocuku1EMUwhLTTQ&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F66.114.124.140%3A3260=
\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNG4CgtqVRbnFyAocuku1EMUwhLTTQ&#39;;=
return true;">66.114.124.140:3260</a> (111)<br>&gt; iscsiadm: connection to=
 discovery address 66.114.124.140 failed<br>&gt; iscsiadm: connection login=
 retries (reopen_max) 5 exceeded<br>&gt; [root@arvindlinux ~]#<br>&gt; </p>=
<p>Are you sure you enabled the iscsi target service on openfiler and are<b=
r>you sure you restarted the service?</p><p>111 is Connection refused by th=
e target. It would not let us open a<br>tcp/ip connection to that address.<=
/p><p>&gt; In the link given he got the below output.<br>&gt; [root@linux3 =
~]# iscsiadm -m discovery -t sendtargets -p openfiler1-<br>&gt; san<br>&gt;=
 <a href=3D"http://192.168.2.195:3260" target=3D"_blank" rel=3D"nofollow" o=
nmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F=
192.168.2.195%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNG_4IQfgG-VDLTf=
v9lMSWwvsUR4rg&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.go=
ogle.com/url?q\x3dhttp%3A%2F%2F192.168.2.195%3A3260\x26sa\x3dD\x26sntz\x3d1=
\x26usg\x3dAFQjCNG_4IQfgG-VDLTfv9lMSWwvsUR4rg&#39;;return true;">192.168.2.=
195:3260</a>,1 iqn.2006-01.com.openfiler:<wbr>scsi.linux3-data-1<br>&gt; <b=
r>&gt; Thanks in advance,<br>&gt; Arvind<br>&gt; <br>&gt; <br>&gt; <br>&gt;=
 <br>&gt; <br>&gt; <br>&gt; <br>&gt; <br>&gt; <br>&gt; <br>&gt; <br>&gt; <b=
r>&gt; <br>&gt; </p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p=
></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/1a497c10-4202-42b4-babd-7678dc409f10%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/1a497c10-4202-42b4-babd-7678dc409f10%40googlegroups.com</a>.<b=
r />

------=_Part_599_1064405043.1576320801016--

------=_Part_598_1194793226.1576320801015--
