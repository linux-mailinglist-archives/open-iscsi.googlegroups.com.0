Return-Path: <open-iscsi+bncBC755V5RXMKBBDXUYOGQMGQEEQEUSBY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id AA88E46DB21
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Dec 2021 19:31:43 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id c19-20020ac81e93000000b002a71180fd3dsf4917019qtm.1
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Dec 2021 10:31:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=UBXQnwj7W57+JEKTw+pqiw67/ao1nCfBuWmitgaQ6oE=;
        b=RBfMR64hq31toCv0dhAf7aPWzPyr+MzOnPbPK9W3A4/cf2LWpztVZxHEt/JUqelW2U
         yODRDRgQFHnq5Z+evUAJtpu68f69rypHpCZEzW0em8DwurAhrdq517Sq36Rc2KQn7Ked
         MWDR55OCiXJgxJytuYV8648fHNgKmIs6Tn/b/0p596Zv9/N8ZO43fy6JCHUgpHw/FBD+
         4pqr0pnpHvjZmb8UCO3nYCyTyNqq+KckKcGDRmC7lsjUAipFppj75FG6Uu/wJje/C4mN
         rYmNis9mouvfP2O26+4JFAjQBiAqLHUcDnoDUqXm2w/R/7mLUTnsrcBPubCr/ZdTMPNY
         PZvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UBXQnwj7W57+JEKTw+pqiw67/ao1nCfBuWmitgaQ6oE=;
        b=O2mg5lUr3zQgv3g/e1MBK1ctXkTbe0UDpaJIxNk/8V9pqLQQylP24HB1MwA//qPKVV
         XVoM155KDGapOrr9uk10PvGPk0ePlD+SOxYVPn+MtfHJomW9Y5DZ391EFOBiKDhfoiWJ
         HMY8Ua9R1cobljsAecMLktwQvkuz07DDQRYzXcY3ZHA4vQ13vgwvrP6+VE+/VSXVTU7S
         0XVbzdYMpY2aKKsihLKNBaE1t2onhQfmoexzyHiWOPkmOG5H5QUs/6cNRaRtPPQlErZ0
         TV8RdRJGO2BGeIuqoAYAcCzUOfXklAFLIJvlSdGXVi6BtCNthsyeADsEIIzI2JBbE8si
         1MxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UBXQnwj7W57+JEKTw+pqiw67/ao1nCfBuWmitgaQ6oE=;
        b=OmdYdFeHxU0ptfyaPHWpRGvA3cn1lpT0+FVbw8L7jTtMfNehGKOpT7Lx6iKp6bOh6h
         gdhjA5drj2ZJiJQx6q0wleUfhWqupi3r/+3I0hpHsUgZHZKzEQAYFi09ew+RpJqRCy4U
         NgBfqRwf5A3S7UWTyLXwQy9/BeXlWuVHwxdVOnbOB5oyt87O3juD3aeAuhHHrEX5zfRn
         TjhnnuekFpwU7kYO40vF8Gnajz8BBoGaep5nfU3awoR6dls57A0JTatkB2EgvtIEM6nf
         U7ZJ/2wjPVVvzWWOHA8m2E51G668VvCauHKYDDExl9DnnSEXZNEotajExKIZx7raWGTG
         Ou/A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5327md+ig9v2y1nFZWSs89KFaXl4rbbFDKh6LD8H3rOR8I6kH6zd
	qLmwh1evr78nfWBaR8qFfDY=
X-Google-Smtp-Source: ABdhPJw5QKjwG3EsY3Gx1mlytoLNdM2ih4w8ly6DGe38309vtzDtE1yseaz3i1vtdEMstgY2EZSjQQ==
X-Received: by 2002:ae9:e80b:: with SMTP id a11mr8438963qkg.716.1638988302599;
        Wed, 08 Dec 2021 10:31:42 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:5746:: with SMTP id 6ls2166618qtx.9.gmail; Wed, 08 Dec
 2021 10:31:42 -0800 (PST)
X-Received: by 2002:ac8:5a51:: with SMTP id o17mr10490059qta.180.1638988301876;
        Wed, 08 Dec 2021 10:31:41 -0800 (PST)
Date: Wed, 8 Dec 2021 10:31:41 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <2a875b1c-35b8-4693-81c4-df65dbc7e2a9n@googlegroups.com>
In-Reply-To: <894fa93f-3f5f-4c21-ac47-3ef64965b5f7n@googlegroups.com>
References: <894fa93f-3f5f-4c21-ac47-3ef64965b5f7n@googlegroups.com>
Subject: Re: Yet another timed out connection
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2120_1307926969.1638988301203"
X-Original-Sender: leeman.duncan@gmail.com
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

------=_Part_2120_1307926969.1638988301203
Content-Type: multipart/alternative; 
	boundary="----=_Part_2121_446650040.1638988301203"

------=_Part_2121_446650040.1638988301203
Content-Type: text/plain; charset="UTF-8"

The target thinks there are two ways to reach it, so during discovery it is 
telling you both of those paths. Discovery, by design, reports all LUNs on 
the target, not just the one you want.

So now, after discovery, your iscsi database thinks there are two IQNs to 
connect to, both reaching the same exact target. so when you then tell 
iscsi to connect to that target, it tries to connect to that target through 
all the paths it has -- and there are two of them. But it looks like your 
target is actually not reachable on the IPv6 Path, for some reason. Perhaps 
the ACL you've set up on your target? The actual reason doesn't matter to 
the initiator -- it just tries and fails to talk to the target through the 
IPv6 path.

There are a couple of ways you can fix this. After discovery, you can 
delete the database node you do not want. Simply run "iscsi -m node" to see 
the list of database nodes discovered, then run 'iscsiadm -m node --op 
delete -p "fe80::211:32ff:fe15:74eb,3260]"' to delete the IPv6 node. 
Another option would be to leave the nodes in the database, but specify the 
node you wish to use when logging on. (Right now, you're telling it to 
login to all nodes in the database). If you still want IPv6 running on your 
box, you could fix the issue with your target so that open-iscsi could log 
into both the IPv4 and IPv6 nodes, as it is trying to do.

On Thursday, November 25, 2021 at 11:19:52 AM UTC-8 Mauricio wrote:

> I know this has been asked many time before but I still do not know what I 
> am doing wrong. I am handing out iSCSI LUNs from a host at 
> 192.168.10.18:3260 to a host called testbox (initiator). 
>
> [root@testbox ~]# iscsiadm -m discovery -t sendtargets -p 192.168.10.18
> 192.168.10.18:3260,1 iqn.2000-01.com.synology-iSCSI:storage.01
> [fe80::211:32ff:fe15:74eb]:3260,1 iqn.2000-01.com.synology-iSCSI:storage.01
> [root@testbox ~]#
> [root@testbox ~]# fgrep address 
> /var/lib/iscsi/nodes/iqn.2000-01.com.synology-iSCSI\:storage.01/
> 192.168.10.18\,3260\,1/default
> node.discovery_address = 192.168.10.18
> node.conn[0].address = 192.168.10.18
> [root@testbox ~]#
>
> When I try to connect I am getting the connection timed out issue. Correct 
> me if I am wrong but it is barking at when It tries to connect using IPv6:
>
> [root@testbox ~]# iscsiadm -m node --loginall all
> Logging in to [iface: default, target: 
> iqn.2000-01.com.synology-iSCSI:storage.01, portal: 192.168.10.18,3260]
> Logging in to [iface: default, target: 
> iqn.2000-01.com.synology-iSCSI:storage.01, portal: 
> fe80::211:32ff:fe15:74eb,3260]
> Login to [iface: default, target: 
> iqn.2000-01.com.synology-iSCSI:storage.01, portal: 192.168.10.18,3260] 
> successful.
> iscsiadm: Could not login to [iface: default, target: 
> iqn.2000-01.com.synology-iSCSI:storage.01, portal: 
> fe80::211:32ff:fe15:74eb,3260].
> iscsiadm: initiator reported error (8 - connection timed out)
> iscsiadm: Could not log into all portals
> [root@testbox ~]#
>
> which sometimes seems to be what it wants to do by default:
>
> [root@testbox ~]# iscsiadm -m node -T 
> iqn.2000-01.com.synology-iSCSI:storage.01 -l
> Logging in to [iface: default, target: 
> iqn.2000-01.com.synology-iSCSI:storage.01, portal: 
> fe80::211:32ff:fe15:74eb,3260]
> iscsiadm: Could not login to [iface: default, target: 
> iqn.2000-01.com.synology-iSCSI:storage.01, portal: 
> fe80::211:32ff:fe15:74eb,3260].
> iscsiadm: initiator reported error (8 - connection timed out)
> iscsiadm: Could not log into all portals
> [root@testbox ~]#
>
> I did not really setup IPv6 in this network; is I guesstimation for the 
> source of the problem correct? 
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/2a875b1c-35b8-4693-81c4-df65dbc7e2a9n%40googlegroups.com.

------=_Part_2121_446650040.1638988301203
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>The target thinks there are two ways to reach it, so during discovery =
it is telling you both of those paths. Discovery, by design, reports all LU=
Ns on the target, not just the one you want.</div><div><br></div><div>So no=
w, after discovery, your iscsi database thinks there are two IQNs to connec=
t to, both reaching the same exact target. so when you then tell iscsi to c=
onnect to that target, it tries to connect to that target through all the p=
aths it has -- and there are two of them. But it looks like your target is =
actually not reachable on the IPv6 Path, for some reason. Perhaps the ACL y=
ou've set up on your target? The actual reason doesn't matter to the initia=
tor -- it just tries and fails to talk to the target through the IPv6 path.=
</div><div><br></div><div>There are a couple of ways you can fix this. Afte=
r discovery, you can delete the database node you do not want. Simply run "=
iscsi -m node" to see the list of database nodes discovered, then run 'iscs=
iadm -m node --op delete -p "fe80::211:32ff:fe15:74eb,3260]"' to delete the=
 IPv6 node. Another option would be to leave the nodes in the database, but=
 specify the node you wish to use when logging on. (Right now, you're telli=
ng it to login to all nodes in the database). If you still want IPv6 runnin=
g on your box, you could fix the issue with your target so that open-iscsi =
could log into both the IPv4 and IPv6 nodes, as it is trying to do.<br></di=
v><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On =
Thursday, November 25, 2021 at 11:19:52 AM UTC-8 Mauricio wrote:<br/></div>=
<blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left=
: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div>I know this has be=
en asked many time before but I still do not know what I am doing wrong. I =
am handing out iSCSI LUNs from a host at <a href=3D"http://192.168.10.18:32=
60" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.=
google.com/url?hl=3Den&amp;q=3Dhttp://192.168.10.18:3260&amp;source=3Dgmail=
&amp;ust=3D1639073314570000&amp;usg=3DAFQjCNHJ0Qq-jd_eEZr5yswvuxtIwC_RIA">1=
92.168.10.18:3260</a> to a host called testbox (initiator).=C2=A0</div><div=
><br></div><div>[root@testbox ~]# iscsiadm -m discovery -t sendtargets -p 1=
92.168.10.18</div><div><a href=3D"http://192.168.10.18:3260" target=3D"_bla=
nk" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?hl=
=3Den&amp;q=3Dhttp://192.168.10.18:3260&amp;source=3Dgmail&amp;ust=3D163907=
3314570000&amp;usg=3DAFQjCNHJ0Qq-jd_eEZr5yswvuxtIwC_RIA">192.168.10.18:3260=
</a>,1 iqn.2000-01.com.synology-iSCSI:storage.01</div><div>[fe80::211:32ff:=
fe15:74eb]:3260,1 iqn.2000-01.com.synology-iSCSI:storage.01</div><div>[root=
@testbox ~]#</div><div>[root@testbox ~]# fgrep address /var/lib/iscsi/nodes=
/iqn.2000-01.com.synology-iSCSI\:storage.01/<a href=3D"http://192.168.10.18=
" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.go=
ogle.com/url?hl=3Den&amp;q=3Dhttp://192.168.10.18&amp;source=3Dgmail&amp;us=
t=3D1639073314570000&amp;usg=3DAFQjCNFphaxLpR_0yFJkbG1qUHWoSYGjhw">192.168.=
10.18</a>\,3260\,1/default<br></div><div><div>node.discovery_address =3D 19=
2.168.10.18</div><div>node.conn[0].address =3D 192.168.10.18</div><div>[roo=
t@testbox ~]#</div></div><div><br></div><div>When I try to connect I am get=
ting the connection timed out issue. Correct me if I am wrong but it is bar=
king at when It tries to connect using IPv6:</div><div><br></div><div><div>=
[root@testbox ~]# iscsiadm -m node --loginall all</div><div>Logging in to [=
iface: default, target: iqn.2000-01.com.synology-iSCSI:storage.01, portal: =
192.168.10.18,3260]</div><div>Logging in to [iface: default, target: iqn.20=
00-01.com.synology-iSCSI:storage.01, portal: fe80::211:32ff:fe15:74eb,3260]=
</div><div>Login to [iface: default, target: iqn.2000-01.com.synology-iSCSI=
:storage.01, portal: 192.168.10.18,3260] successful.</div><div>iscsiadm: Co=
uld not login to [iface: default, target: iqn.2000-01.com.synology-iSCSI:st=
orage.01, portal: fe80::211:32ff:fe15:74eb,3260].</div><div>iscsiadm: initi=
ator reported error (8 - connection timed out)</div><div>iscsiadm: Could no=
t log into all portals</div><div>[root@testbox ~]#</div></div><div><br></di=
v><div>which sometimes seems to be what it wants to do by default:</div><di=
v><br></div><div>[root@testbox ~]# iscsiadm -m node -T iqn.2000-01.com.syno=
logy-iSCSI:storage.01 -l</div><div>Logging in to [iface: default, target: i=
qn.2000-01.com.synology-iSCSI:storage.01, portal: fe80::211:32ff:fe15:74eb,=
3260]</div><div>iscsiadm: Could not login to [iface: default, target: iqn.2=
000-01.com.synology-iSCSI:storage.01, portal: fe80::211:32ff:fe15:74eb,3260=
].</div><div>iscsiadm: initiator reported error (8 - connection timed out)<=
/div><div>iscsiadm: Could not log into all portals</div><div>[root@testbox =
~]#</div><div><br></div><div>I did not really setup IPv6 in this network; i=
s I guesstimation for the source of the problem correct?=C2=A0</div></block=
quote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/2a875b1c-35b8-4693-81c4-df65dbc7e2a9n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/2a875b1c-35b8-4693-81c4-df65dbc7e2a9n%40googlegroups.com</a>.=
<br />

------=_Part_2121_446650040.1638988301203--

------=_Part_2120_1307926969.1638988301203--
