Return-Path: <open-iscsi+bncBC2Z7I6LVMDRBLM75XWAKGQE3OTAV2Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEEECE59D
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Oct 2019 16:46:06 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id h20sf3946065qto.7
        for <lists+open-iscsi@lfdr.de>; Mon, 07 Oct 2019 07:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v4oY9CPdEGUuMttGfPyQpEihbxLcHG9Nwc4M7Jd9Djo=;
        b=CDjJAUDAu+2XiqtQW0cGsO9BMJbrTN96snLhhbXQLEUlQ2gAE3VYWlDnnekxPGokbS
         CBKbpWFbjvKB0s4ovIAoRvn3lY6q7dYIHSuu0Xg9h/H0XMoWqjtm7NIPmVUTmS7PZDYt
         EsbvpmeFweDm4h1gXQoJ4OETR60PnOUGAKo9mFOVKKfoiduPW1VMk0tqr5yGZcSRckAl
         /XKqz85GR8UNmEmqu67ZDeKYns5lnUAvWm1jNRNuSiDi08I2jpBSDKtUxwRqEJGcNX2F
         J+hp8dTEAqIQ4wa/HuMiSWifKt86ifBhftajJvewgAGsqILg2+Lpw93M/sr9uuvRbp+t
         fM7w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v4oY9CPdEGUuMttGfPyQpEihbxLcHG9Nwc4M7Jd9Djo=;
        b=G+ZWutUol4BUq+ID+JQzaWbf4icRPW18g8mxy27opO9DJXJMgQ+1G8sYA7TBM/9bwo
         XQTFOmCvbQOq3JIy0W/oKDYDqaF/9JWHzvb6G5E6VjxeXsfu69/O+ybCx8dkVv/78v1H
         y5NLaM5dQ+YnPxfCAcFLud+efAoaMLTCTgAImg/yoAMtmtOMUlq350mIal+ncRu3+e37
         MuIsMDvS4Y94ilMnBMxEDmJ4f62LHFw8cLB4dpmBtittXTk2BwJLFXX/lZE+mrdUgJ9K
         LNTWVsLqzosdTAvpTf9pYTmpMGfUqdAZPb8RQeGTyS6QQ9HlysNBnJ/km2PPNDaemvVb
         dfXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v4oY9CPdEGUuMttGfPyQpEihbxLcHG9Nwc4M7Jd9Djo=;
        b=cXEH8Spz/EBNiXyq1XR+JWWBX+5mPJuibg3Nvj1VTu1o/EJ3RJxp/0MejqGLjOeaXH
         Cybyq205Gjzhokn18baKua6+yIcPNr5Gxjke3g0LgFvb1Sq6gHIcQ8FghdqUQ9Vj+rJj
         wYnI7zW6Ga9a/sRjGSXrPGTfs4x2EgOcIU6eZKsNmugy7X/sqSz/LmSehToc4z3mxSXO
         CYpdndZuHHhQMzlgGtq9S38rhdIlfZ9dAVYl3ehkeSHf2wsRB4+KkBdRlUWuFGti7DsD
         czLMqiV5EnL4tqPhxm/ppy/gpAWpokZ7mhbr++5mSfRjBQWO9BVnnQYcTWoLR0eQzHaE
         kNbA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUufwUMmfP+4kBWt4s7hOlIw/DsAIh7dI/xCAEeKG3NNLzpu5lI
	VTJVATH+MUWawLu/6TP1IWE=
X-Google-Smtp-Source: APXvYqy4HgK2GsykOBj9dVkjhAwZE/Mmt3+HbZ6OnphR5+TVlJiEHp5EK6zDGkFXwsEDiFdImPKU4g==
X-Received: by 2002:ac8:fcf:: with SMTP id f15mr30816305qtk.376.1570459565850;
        Mon, 07 Oct 2019 07:46:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:3677:: with SMTP id n52ls55908qtb.9.gmail; Mon, 07 Oct
 2019 07:46:05 -0700 (PDT)
X-Received: by 2002:ac8:822:: with SMTP id u31mr30109940qth.328.1570459565139;
        Mon, 07 Oct 2019 07:46:05 -0700 (PDT)
Date: Mon, 7 Oct 2019 07:46:04 -0700 (PDT)
From: Kuruva Maddileti <maddileti1987@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <0fc26f37-c17b-46e8-b7c8-fd642c4573f9@googlegroups.com>
Subject: after changing storage ports from 1Gig to 10Gig unable to access
 the vm, Openstack level vm is going to error state
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1729_1376664859.1570459564603"
X-Original-Sender: maddileti1987@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_1729_1376664859.1570459564603
Content-Type: multipart/alternative; 
	boundary="----=_Part_1730_589757455.1570459564603"

------=_Part_1730_589757455.1570459564603
Content-Type: text/plain; charset="UTF-8"

Hi Team,

We have changed the Unity storage ports from 1Gig to 10Gig. After that we 
have deleted the old iqn's from storage level and compute level.

old iqn's :

170.0.0.10
170.0.0.11

New 10Gig iqn's :

170.0.0.20
170.0.0.21

 After deleting old iqn's we are able to access the storage at compute 
level, that storage is assigned to openstack vm.

We have rebooted one compute host, after that we are unable to access the 
storage and the openstack vm is going to error state. 

As per the nova-compute logs, the nova is trying to search for old iqn's 
which is not present that's the reason vm is going to error state.

Could you please find the below logs and advise further...




root@compute75 ~]# iscsiadm -m session
tcp: [1] 170.0.0.11:3260,8 iqn.1992-04.com.emc:cx.ckm00185002995.b0 
(non-flash)
tcp: [2] 170.0.0.10:3260,9 iqn.1992-04.com.emc:cx.ckm00185002995.a0 
(non-flash)
tcp: [3] 170.0.0.20:3260,7 iqn.1992-04.com.emc:cx.ckm00185002995.a1 
(non-flash)
tcp: [4] 170.0.0.21:3260,6 iqn.1992-04.com.emc:cx.ckm00185002995.b1 
(non-flash)

We have rebooted the old iqn's from compute level, Storage team already 
removed 1Gig ports from Unity storage side.

[root@compute75 ~]# iscsiadm -m node -T  
iqn.1992-04.com.emc:cx.ckm00185002995.b0 -p 170.0.0.11 -u
Logging out of session [sid: 1, target: 
iqn.1992-04.com.emc:cx.ckm00185002995.b0, portal: 170.0.0.11,3260]
Logout of [sid: 1, target: iqn.1992-04.com.emc:cx.ckm00185002995.b0, 
portal: 170.0.0.11,3260] successful.
[root@compute75 ~]# iscsiadm -m node -T  
iqn.1992-04.com.emc:cx.ckm00185002995.a0  -p 170.0.0.10 -u
Logging out of session [sid: 2, target: 
iqn.1992-04.com.emc:cx.ckm00185002995.a0, portal: 170.0.0.10,3260]
Logout of [sid: 2, target: iqn.1992-04.com.emc:cx.ckm00185002995.a0, 
portal: 170.0.0.10,3260] successful.
[root@compute75 ~]# iscsiadm -m node -o delete -T  
iqn.1992-04.com.emc:cx.ckm00185002995.b0
[root@compute75 ~]# iscsiadm -m node -o delete -T  
iqn.1992-04.com.emc:cx.ckm00185002995.a0
[root@compute75 ~]#
[root@compute75 ~]# systemctl restart iscsi
[root@compute75 ~]# systemctl restart multipathd

Try `iscsiadm --help' for more information.
[root@compute75 ~]# iscsiadm --m node
170.0.0.20:3260,7 iqn.1992-04.com.emc:cx.ckm00185002995.a1
170.0.0.21:3260,6 iqn.1992-04.com.emc:cx.ckm00185002995.b1
[root@compute75 ~]#


After reboot of the compute host 


root@compute75 ~]# iscsiadm --m session
tcp: [3] 170.0.0.20:3260,7 iqn.1992-04.com.emc:cx.ckm00185002995.a1 
(non-flash)
tcp: [4] 170.0.0.21:3260,6 iqn.1992-04.com.emc:cx.ckm00185002995.b1 
(non-flash)
[root@compute75 ~]# multipath -ll
mpathb (36006016029104b0084e7955d71109aa0) dm-1 DGC     ,VRAID
size=1.0G features='2 queue_if_no_path retain_attached_hw_handler' 
hwhandler='1 alua' wp=rw
|-+- policy='service-time 0' prio=50 status=active
| `- 10:0:0:12395 sdm 8:192 active ready running
`-+- policy='service-time 0' prio=10 status=enabled
  `- 11:0:0:12395 sdn 8:208 active ready running
mpatha (36006016029104b0050e3955d0d37f4ae) dm-0 DGC     ,VRAID
size=10G features='2 queue_if_no_path retain_attached_hw_handler' 
hwhandler='1 alua' wp=rw
|-+- policy='service-time 0' prio=50 status=active
| `- 11:0:0:4390  sdl 8:176 active ready running
`-+- policy='service-time 0' prio=10 status=enabled
  `- 10:0:0:4390  sdk 8:160 active ready running
[root@compute75 ~]#


After removing old paths, still we are able to access the storage.


[root@compute75 ~]# ssh sdn@192.0.2.14
sdn@192.0.2.14's password:
Welcome to Ubuntu 16.04.6 LTS (GNU/Linux 4.4.0-142-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

98 packages can be updated.
56 updates are security updates.


Last login: Fri Oct  4 16:49:06 2019 from 192.0.2.1
sdn@ubuntu:~$ df -hT /mnt/test
Filesystem     Type  Size  Used Avail Use% Mounted on
/dev/vdb1      ext3  991M   35M  906M   4% /mnt/test
sdn@ubuntu:~$ cd /mnt/test
sdn@ubuntu:/mnt/test$ touch bb
touch: cannot touch 'bb': Permission denied
sdn@ubuntu:/mnt/test$ sudo su -
[sudo] password for sdn:
root@ubuntu:~# cd /mnt/test
root@ubuntu:/mnt/test# touch bb
root@ubuntu:/mnt/test# ls
aa  bb  docs  docs2  lost+found
root@ubuntu:/mnt/test#


Now rebooted the compute node. The vm is going to error state.



[root@compute75 ~]# reboot
Connection to compute75 closed by remote host.
Connection to compute75 closed.
[root@osc ~(keystone_admin)]#



[root@osc ~(keystone_admin)]# openstack server list
+--------------------------------------+-----------+--------+-----------------+------------+
| ID                                   | Name      | Status | Networks      
  | Image Name |
+--------------------------------------+-----------+--------+-----------------+------------+
| 15c064ca-8bd0-40be-b384-c796db1da953 | test_vol3 | ERROR  | 
net1=192.0.2.14 | ubuntu     |
| afd5c571-2152-4313-988e-c74a8fc7f586 | test_vol2 | ACTIVE | 
net1=192.0.2.13 | ubuntu     |
| 34d6b9aa-4642-461c-ba22-508de8f5ba5a | test_vol1 | ERROR  | 
net1=192.0.2.2  | ubuntu     |
+--------------------------------------+-----------+--------+-----------------+------------+
[root@osc ~(keystone_admin)]#


2019-10-07 16:09:52.456 28347 WARNING os_brick.initiator.connectors.iscsi 
[req-1f65b818-108d-41cb-9ea1-ca18761a673f - - - - -] Failed to login iSCSI 
target iqn.1992-04.com.emc:cx.ckm00185002995.b0 on portal 170.0.0.11:3260 
(exit code 8).
2019-10-07 16:09:52.458 28347 INFO os_brick.initiator.connectors.iscsi 
[req-1f65b818-108d-41cb-9ea1-ca18761a673f - - - - -] Trying to connect to 
iSCSI portal 170.0.0.10:3260
2019-10-07 16:11:52.636 28347 WARNING os_brick.initiator.connectors.iscsi 
[req-1f65b818-108d-41cb-9ea1-ca18761a673f - - - - -] Failed to login iSCSI 
target iqn.1992-04.com.emc:cx.ckm00185002995.a0 on portal 170.0.0.10:3260 
(exit code 8).
2019-10-07 16:11:52.789 28347 ERROR os_brick.initiator.connectors.iscsi 
[req-1f65b818-108d-41cb-9ea1-ca18761a673f - - - - -] Could not login to any 
iSCSI portal.
2019-10-07 16:11:52.790 28347 WARNING nova.compute.manager 
[req-1f65b818-108d-41cb-9ea1-ca18761a673f - - - - -] [instance: 
15c064ca-8bd0-40be-b384-c796db1da953] Failed to resume instance 


Could you please advise further on this.



-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/0fc26f37-c17b-46e8-b7c8-fd642c4573f9%40googlegroups.com.

------=_Part_1730_589757455.1570459564603
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Team,<div><br></div><div>We have changed the Unity stor=
age ports from 1Gig to 10Gig. After that we have deleted the old iqn&#39;s =
from storage level and compute level.</div><div><br></div><div>old iqn&#39;=
s :</div><div><br></div><div>170.0.0.10</div><div>170.0.0.11</div><div><br>=
</div><div>New 10Gig iqn&#39;s :</div><div><br></div><div>170.0.0.20</div><=
div>170.0.0.21</div><div><br></div><div>=C2=A0After deleting old iqn&#39;s =
we are able to access the storage at compute level, that storage is assigne=
d to openstack vm.</div><div><br></div><div>We have rebooted one compute ho=
st, after that we are unable to access the storage and the openstack vm is =
going to error state.=C2=A0</div><div><br></div><div>As per the nova-comput=
e logs, the nova is trying to search for old iqn&#39;s which is not present=
 that&#39;s the reason vm is going to error state.</div><div><br></div><div=
>Could you please find the below logs and advise further...</div><div><br><=
/div><div><br></div><div><br></div><div><br></div><div><div>root@compute75 =
~]# iscsiadm -m session</div><div>tcp: [1] 170.0.0.11:3260,8 iqn.1992-04.co=
m.emc:cx.ckm00185002995.b0 (non-flash)</div><div>tcp: [2] 170.0.0.10:3260,9=
 iqn.1992-04.com.emc:cx.ckm00185002995.a0 (non-flash)</div><div>tcp: [3] 17=
0.0.0.20:3260,7 iqn.1992-04.com.emc:cx.ckm00185002995.a1 (non-flash)</div><=
div>tcp: [4] 170.0.0.21:3260,6 iqn.1992-04.com.emc:cx.ckm00185002995.b1 (no=
n-flash)</div><div><br></div><div>We have rebooted the old iqn&#39;s from c=
ompute level, Storage team already removed 1Gig ports from Unity storage si=
de.</div><div><br></div><div>[root@compute75 ~]# iscsiadm -m node -T=C2=A0 =
iqn.1992-04.com.emc:cx.ckm00185002995.b0 -p 170.0.0.11 -u</div><div>Logging=
 out of session [sid: 1, target: iqn.1992-04.com.emc:cx.ckm00185002995.b0, =
portal: 170.0.0.11,3260]</div><div>Logout of [sid: 1, target: iqn.1992-04.c=
om.emc:cx.ckm00185002995.b0, portal: 170.0.0.11,3260] successful.</div><div=
>[root@compute75 ~]# iscsiadm -m node -T=C2=A0 iqn.1992-04.com.emc:cx.ckm00=
185002995.a0=C2=A0 -p 170.0.0.10 -u</div><div>Logging out of session [sid: =
2, target: iqn.1992-04.com.emc:cx.ckm00185002995.a0, portal: 170.0.0.10,326=
0]</div><div>Logout of [sid: 2, target: iqn.1992-04.com.emc:cx.ckm001850029=
95.a0, portal: 170.0.0.10,3260] successful.</div><div>[root@compute75 ~]# i=
scsiadm -m node -o delete -T=C2=A0 iqn.1992-04.com.emc:cx.ckm00185002995.b0=
</div><div>[root@compute75 ~]# iscsiadm -m node -o delete -T=C2=A0 iqn.1992=
-04.com.emc:cx.ckm00185002995.a0</div><div>[root@compute75 ~]#</div><div>[r=
oot@compute75 ~]# systemctl restart iscsi</div><div>[root@compute75 ~]# sys=
temctl restart multipathd</div><div><br></div><div>Try `iscsiadm --help&#39=
; for more information.</div><div>[root@compute75 ~]# iscsiadm --m node</di=
v><div>170.0.0.20:3260,7 iqn.1992-04.com.emc:cx.ckm00185002995.a1</div><div=
>170.0.0.21:3260,6 iqn.1992-04.com.emc:cx.ckm00185002995.b1</div><div>[root=
@compute75 ~]#</div></div><div><br></div><div><br></div><div>After reboot o=
f the compute host=C2=A0</div><div><br></div><div><br></div><div><div>root@=
compute75 ~]# iscsiadm --m session</div><div>tcp: [3] 170.0.0.20:3260,7 iqn=
.1992-04.com.emc:cx.ckm00185002995.a1 (non-flash)</div><div>tcp: [4] 170.0.=
0.21:3260,6 iqn.1992-04.com.emc:cx.ckm00185002995.b1 (non-flash)</div><div>=
[root@compute75 ~]# multipath -ll</div><div>mpathb (36006016029104b0084e795=
5d71109aa0) dm-1 DGC=C2=A0 =C2=A0 =C2=A0,VRAID</div><div>size=3D1.0G featur=
es=3D&#39;2 queue_if_no_path retain_attached_hw_handler&#39; hwhandler=3D&#=
39;1 alua&#39; wp=3Drw</div><div>|-+- policy=3D&#39;service-time 0&#39; pri=
o=3D50 status=3Dactive</div><div>| `- 10:0:0:12395 sdm 8:192 active ready r=
unning</div><div>`-+- policy=3D&#39;service-time 0&#39; prio=3D10 status=3D=
enabled</div><div>=C2=A0 `- 11:0:0:12395 sdn 8:208 active ready running</di=
v><div>mpatha (36006016029104b0050e3955d0d37f4ae) dm-0 DGC=C2=A0 =C2=A0 =C2=
=A0,VRAID</div><div>size=3D10G features=3D&#39;2 queue_if_no_path retain_at=
tached_hw_handler&#39; hwhandler=3D&#39;1 alua&#39; wp=3Drw</div><div>|-+- =
policy=3D&#39;service-time 0&#39; prio=3D50 status=3Dactive</div><div>| `- =
11:0:0:4390=C2=A0 sdl 8:176 active ready running</div><div>`-+- policy=3D&#=
39;service-time 0&#39; prio=3D10 status=3Denabled</div><div>=C2=A0 `- 10:0:=
0:4390=C2=A0 sdk 8:160 active ready running</div><div>[root@compute75 ~]#</=
div><div><br></div><div><br></div><div>After removing old paths, still we a=
re able to access the storage.</div><div><br></div><div><br></div><div>[roo=
t@compute75 ~]# ssh sdn@192.0.2.14</div><div>sdn@192.0.2.14&#39;s password:=
</div><div>Welcome to Ubuntu 16.04.6 LTS (GNU/Linux 4.4.0-142-generic x86_6=
4)</div><div><br></div><div>=C2=A0* Documentation:=C2=A0 https://help.ubunt=
u.com</div><div>=C2=A0* Management:=C2=A0 =C2=A0 =C2=A0https://landscape.ca=
nonical.com</div><div>=C2=A0* Support:=C2=A0 =C2=A0 =C2=A0 =C2=A0 https://u=
buntu.com/advantage</div><div><br></div><div>98 packages can be updated.</d=
iv><div>56 updates are security updates.</div><div><br></div><div><br></div=
><div>Last login: Fri Oct=C2=A0 4 16:49:06 2019 from 192.0.2.1</div><div>sd=
n@ubuntu:~$ df -hT /mnt/test</div><div>Filesystem=C2=A0 =C2=A0 =C2=A0Type=
=C2=A0 Size=C2=A0 Used Avail Use% Mounted on</div><div>/dev/vdb1=C2=A0 =C2=
=A0 =C2=A0 ext3=C2=A0 991M=C2=A0 =C2=A035M=C2=A0 906M=C2=A0 =C2=A04% /mnt/t=
est</div><div>sdn@ubuntu:~$ cd /mnt/test</div><div>sdn@ubuntu:/mnt/test$ to=
uch bb</div><div>touch: cannot touch &#39;bb&#39;: Permission denied</div><=
div>sdn@ubuntu:/mnt/test$ sudo su -</div><div>[sudo] password for sdn:</div=
><div>root@ubuntu:~# cd /mnt/test</div><div>root@ubuntu:/mnt/test# touch bb=
</div><div>root@ubuntu:/mnt/test# ls</div><div>aa=C2=A0 bb=C2=A0 docs=C2=A0=
 docs2=C2=A0 lost+found</div><div>root@ubuntu:/mnt/test#</div><div><br></di=
v><div><br></div><div>Now rebooted the compute node. The vm is going to err=
or state.</div><div><br></div><div><br></div><div><br></div><div>[root@comp=
ute75 ~]# reboot</div><div>Connection to compute75 closed by remote host.</=
div><div>Connection to compute75 closed.</div><div>[root@osc ~(keystone_adm=
in)]#</div></div><div><br></div><div><br></div><div><br></div><div><div>[ro=
ot@osc ~(keystone_admin)]# openstack server list</div><div>+---------------=
-----------------------+-----------+--------+-----------------+------------=
+</div><div>| ID=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| Name=C2=
=A0 =C2=A0 =C2=A0 | Status | Networks=C2=A0 =C2=A0 =C2=A0 =C2=A0 | Image Na=
me |</div><div>+--------------------------------------+-----------+--------=
+-----------------+------------+</div><div>| 15c064ca-8bd0-40be-b384-c796db=
1da953 | test_vol3 | ERROR=C2=A0 | net1=3D192.0.2.14 | ubuntu=C2=A0 =C2=A0 =
=C2=A0|</div><div>| afd5c571-2152-4313-988e-c74a8fc7f586 | test_vol2 | ACTI=
VE | net1=3D192.0.2.13 | ubuntu=C2=A0 =C2=A0 =C2=A0|</div><div>| 34d6b9aa-4=
642-461c-ba22-508de8f5ba5a | test_vol1 | ERROR=C2=A0 | net1=3D192.0.2.2=C2=
=A0 | ubuntu=C2=A0 =C2=A0 =C2=A0|</div><div>+------------------------------=
--------+-----------+--------+-----------------+------------+</div><div>[ro=
ot@osc ~(keystone_admin)]#</div></div><div><br></div><div><br></div><div>20=
19-10-07 16:09:52.456 28347 WARNING os_brick.initiator.connectors.iscsi [re=
q-1f65b818-108d-41cb-9ea1-ca18761a673f - - - - -] Failed to login iSCSI tar=
get iqn.1992-04.com.emc:cx.ckm00185002995.b0 on portal 170.0.0.11:3260 (exi=
t code 8).<br>2019-10-07 16:09:52.458 28347 INFO os_brick.initiator.connect=
ors.iscsi [req-1f65b818-108d-41cb-9ea1-ca18761a673f - - - - -] Trying to co=
nnect to iSCSI portal 170.0.0.10:3260<br>2019-10-07 16:11:52.636 28347 WARN=
ING os_brick.initiator.connectors.iscsi [req-1f65b818-108d-41cb-9ea1-ca1876=
1a673f - - - - -] Failed to login iSCSI target iqn.1992-04.com.emc:cx.ckm00=
185002995.a0 on portal 170.0.0.10:3260 (exit code 8).<br>2019-10-07 16:11:5=
2.789 28347 ERROR os_brick.initiator.connectors.iscsi [req-1f65b818-108d-41=
cb-9ea1-ca18761a673f - - - - -] Could not login to any iSCSI portal.<br>201=
9-10-07 16:11:52.790 28347 WARNING nova.compute.manager [req-1f65b818-108d-=
41cb-9ea1-ca18761a673f - - - - -] [instance: 15c064ca-8bd0-40be-b384-c796db=
1da953] Failed to resume instance=C2=A0<br></div><div><br></div><div><br></=
div><div>Could you please advise further on this.</div><div><br></div><div>=
<br></div><div><br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/0fc26f37-c17b-46e8-b7c8-fd642c4573f9%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/0fc26f37-c17b-46e8-b7c8-fd642c4573f9%40googlegroups.com</a>.<b=
r />

------=_Part_1730_589757455.1570459564603--

------=_Part_1729_1376664859.1570459564603--
