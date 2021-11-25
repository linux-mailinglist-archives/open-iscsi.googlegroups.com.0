Return-Path: <open-iscsi+bncBCV2L6ETUYNBBWGD76GAMGQEBYRRMBA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B6545E0EB
	for <lists+open-iscsi@lfdr.de>; Thu, 25 Nov 2021 20:19:54 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id q2-20020a05621419e200b003aeeeff5417sf7718131qvc.9
        for <lists+open-iscsi@lfdr.de>; Thu, 25 Nov 2021 11:19:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rc0kFOXnf11ddQrc3jCCLXSF5wRM/F52mXfKMLvzZDo=;
        b=kFVgYCbxIsYdoKou+4u50udPvc0TlnkZWTqWb18CQrAb4O7xAFwvxanFpceUc3aCeL
         tgB/thxKh/iJNRMcrXdDjLJMXle0MIvr62Hxory06cISzRRWzfT6Mkk9XWKtA6bVCxmi
         3d+n3imeaA4HH1J1bF9LAjpLQ5yJmpdwf65RjCHD87pXozIrcEKDDDLFe1qZp+knYbo3
         7NUKYsFCm9z9ZEDft0CennyEjbIa4oqRJqQ0nDAAWkBM3bYd/mhK81q+ys2+TTfFhLcI
         KiqZgtoe/mMyQNbJXdw6wffm77bXeDzT7GQ2p98Xf1txNR9Fj4oxZREMLCSu2RTqKFUF
         W/CA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rc0kFOXnf11ddQrc3jCCLXSF5wRM/F52mXfKMLvzZDo=;
        b=PaMWGKzkOzo+m5D62Bty3wAxOLrgaK07f+r0M5BDvp0LS69qhAKKNbX4qiigxb28rw
         1HKpH1FdHiHtEKf+GGWwxkzmfLhc/tkF9NdWDTMoy+Oz8xV8x8eV7Db6tTVS3Rd6anSQ
         wYnFVUwW97KWxAIgD4nyZf6PPN9XH5xkelQ5zYlvFw2AIsTzloJ2P6jXtAT1a+FcpeN4
         gO3bSHsRWTSbbMqH0HBMq80WVQvgsZ9W9T4oXcIi7eTZ9jxZyKFoaf7rtSVHP5OnuhJv
         BhWD46hLjLaHv95PgjcZGiaZ2VyEimv9up2Ksy8PtOsTTwdE2Rj5Alxhqt3VEZhxrST+
         OAIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rc0kFOXnf11ddQrc3jCCLXSF5wRM/F52mXfKMLvzZDo=;
        b=7MznXYRHGAsOwiHTr1Ux6q7tjF7v/V8ve2IuRqJpZ4bgiTvcKZczWTF7mdTIJTirU/
         KiY+3vCaqq9/Lhg/yr7LqtipvWrR4dk0EQQMTeNXnvAyu6bqnsE2pVmBsWV7l6xHoxee
         QxzQVtFrmIiZW5Uia3N/hqvsqgJJ3CEPOnzaTfWFz+6whZEZU6gekjbEhaQpKh2LcxLT
         Z6f+s/wRRoOFJeW5WGNigH8Ix3IKkQDj1h5zCUfcWEnmD26lEoKgl8haIHDAnYajjNEa
         +dLTnFrcRftKQAXOaQ6hjZ+R6wVKzP3yTiJQy/HPS2TEEs4gZUHTzGjUVCyLtgWo6WBy
         pb+w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531Qza+c/uGvh5ArlrB0ZJDJwSpkMBGyYGbHMlTzdvZyrcxt4io1
	7Yy4vpSwLQC3loGN3HizGJg=
X-Google-Smtp-Source: ABdhPJxCwnwSA8dSxgXDh48DfnK7uSlsz+PZZNv3xuomTCe/jQ4u/ydBwtrMARfSPNgODFNM5XKy1Q==
X-Received: by 2002:ac8:588c:: with SMTP id t12mr19868382qta.325.1637867993107;
        Thu, 25 Nov 2021 11:19:53 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:dd13:: with SMTP id u19ls1493519qvk.3.gmail; Thu, 25 Nov
 2021 11:19:52 -0800 (PST)
X-Received: by 2002:a05:6214:23ca:: with SMTP id hr10mr8301250qvb.78.1637867992519;
        Thu, 25 Nov 2021 11:19:52 -0800 (PST)
Date: Thu, 25 Nov 2021 11:19:51 -0800 (PST)
From: Mauricio <raubvogel@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <894fa93f-3f5f-4c21-ac47-3ef64965b5f7n@googlegroups.com>
Subject: Yet another timed out connection
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2630_1952718406.1637867991931"
X-Original-Sender: raubvogel@gmail.com
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

------=_Part_2630_1952718406.1637867991931
Content-Type: multipart/alternative; 
	boundary="----=_Part_2631_45857532.1637867991931"

------=_Part_2631_45857532.1637867991931
Content-Type: text/plain; charset="UTF-8"

I know this has been asked many time before but I still do not know what I 
am doing wrong. I am handing out iSCSI LUNs from a host at 
192.168.10.18:3260 to a host called testbox (initiator). 

[root@testbox ~]# iscsiadm -m discovery -t sendtargets -p 192.168.10.18
192.168.10.18:3260,1 iqn.2000-01.com.synology-iSCSI:storage.01
[fe80::211:32ff:fe15:74eb]:3260,1 iqn.2000-01.com.synology-iSCSI:storage.01
[root@testbox ~]#
[root@testbox ~]# fgrep address 
/var/lib/iscsi/nodes/iqn.2000-01.com.synology-iSCSI\:storage.01/192.168.10.18\,3260\,1/default
node.discovery_address = 192.168.10.18
node.conn[0].address = 192.168.10.18
[root@testbox ~]#

When I try to connect I am getting the connection timed out issue. Correct 
me if I am wrong but it is barking at when It tries to connect using IPv6:

[root@testbox ~]# iscsiadm -m node --loginall all
Logging in to [iface: default, target: 
iqn.2000-01.com.synology-iSCSI:storage.01, portal: 192.168.10.18,3260]
Logging in to [iface: default, target: 
iqn.2000-01.com.synology-iSCSI:storage.01, portal: 
fe80::211:32ff:fe15:74eb,3260]
Login to [iface: default, target: 
iqn.2000-01.com.synology-iSCSI:storage.01, portal: 192.168.10.18,3260] 
successful.
iscsiadm: Could not login to [iface: default, target: 
iqn.2000-01.com.synology-iSCSI:storage.01, portal: 
fe80::211:32ff:fe15:74eb,3260].
iscsiadm: initiator reported error (8 - connection timed out)
iscsiadm: Could not log into all portals
[root@testbox ~]#

which sometimes seems to be what it wants to do by default:

[root@testbox ~]# iscsiadm -m node -T 
iqn.2000-01.com.synology-iSCSI:storage.01 -l
Logging in to [iface: default, target: 
iqn.2000-01.com.synology-iSCSI:storage.01, portal: 
fe80::211:32ff:fe15:74eb,3260]
iscsiadm: Could not login to [iface: default, target: 
iqn.2000-01.com.synology-iSCSI:storage.01, portal: 
fe80::211:32ff:fe15:74eb,3260].
iscsiadm: initiator reported error (8 - connection timed out)
iscsiadm: Could not log into all portals
[root@testbox ~]#

I did not really setup IPv6 in this network; is I guesstimation for the 
source of the problem correct? 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/894fa93f-3f5f-4c21-ac47-3ef64965b5f7n%40googlegroups.com.

------=_Part_2631_45857532.1637867991931
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>I know this has been asked many time before but I still do not know wh=
at I am doing wrong. I am handing out iSCSI LUNs from a host at 192.168.10.=
18:3260 to a host called testbox (initiator).&nbsp;</div><div><br></div><di=
v>[root@testbox ~]# iscsiadm -m discovery -t sendtargets -p 192.168.10.18</=
div><div>192.168.10.18:3260,1 iqn.2000-01.com.synology-iSCSI:storage.01</di=
v><div>[fe80::211:32ff:fe15:74eb]:3260,1 iqn.2000-01.com.synology-iSCSI:sto=
rage.01</div><div>[root@testbox ~]#</div><div>[root@testbox ~]# fgrep addre=
ss /var/lib/iscsi/nodes/iqn.2000-01.com.synology-iSCSI\:storage.01/192.168.=
10.18\,3260\,1/default<br></div><div><div>node.discovery_address =3D 192.16=
8.10.18</div><div>node.conn[0].address =3D 192.168.10.18</div><div>[root@te=
stbox ~]#</div></div><div><br></div><div>When I try to connect I am getting=
 the connection timed out issue. Correct me if I am wrong but it is barking=
 at when It tries to connect using IPv6:</div><div><br></div><div><div>[roo=
t@testbox ~]# iscsiadm -m node --loginall all</div><div>Logging in to [ifac=
e: default, target: iqn.2000-01.com.synology-iSCSI:storage.01, portal: 192.=
168.10.18,3260]</div><div>Logging in to [iface: default, target: iqn.2000-0=
1.com.synology-iSCSI:storage.01, portal: fe80::211:32ff:fe15:74eb,3260]</di=
v><div>Login to [iface: default, target: iqn.2000-01.com.synology-iSCSI:sto=
rage.01, portal: 192.168.10.18,3260] successful.</div><div>iscsiadm: Could =
not login to [iface: default, target: iqn.2000-01.com.synology-iSCSI:storag=
e.01, portal: fe80::211:32ff:fe15:74eb,3260].</div><div>iscsiadm: initiator=
 reported error (8 - connection timed out)</div><div>iscsiadm: Could not lo=
g into all portals</div><div>[root@testbox ~]#</div></div><div><br></div><d=
iv>which sometimes seems to be what it wants to do by default:</div><div><b=
r></div><div>[root@testbox ~]# iscsiadm -m node -T iqn.2000-01.com.synology=
-iSCSI:storage.01 -l</div><div>Logging in to [iface: default, target: iqn.2=
000-01.com.synology-iSCSI:storage.01, portal: fe80::211:32ff:fe15:74eb,3260=
]</div><div>iscsiadm: Could not login to [iface: default, target: iqn.2000-=
01.com.synology-iSCSI:storage.01, portal: fe80::211:32ff:fe15:74eb,3260].</=
div><div>iscsiadm: initiator reported error (8 - connection timed out)</div=
><div>iscsiadm: Could not log into all portals</div><div>[root@testbox ~]#<=
/div><div><br></div><div>I did not really setup IPv6 in this network; is I =
guesstimation for the source of the problem correct?&nbsp;</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/894fa93f-3f5f-4c21-ac47-3ef64965b5f7n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/894fa93f-3f5f-4c21-ac47-3ef64965b5f7n%40googlegroups.com</a>.=
<br />

------=_Part_2631_45857532.1637867991931--

------=_Part_2630_1952718406.1637867991931--
