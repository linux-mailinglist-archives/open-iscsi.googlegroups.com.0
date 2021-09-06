Return-Path: <open-iscsi+bncBDIYT2GSWABBBOXD4OEQMGQE3EDV2QI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAC2403E4C
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Sep 2021 19:24:12 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id o9-20020ac80249000000b002a0c9fd54d5sf4189385qtg.4
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Sep 2021 10:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0gR2Sq3hWMhALaxX7xvey9FJQhxChl86R9SPPNDVB9s=;
        b=ieXn3s+2nc/SlbOsbie0AQ6mRBJ6mJzjuSa85p79d6f0e9ci8vJc+yKqAOnSYNz196
         i3eOPL8TQeKxTreXYGrZ34F+5hveZFpHYn75mmYnwH+XiCTkvrP+mJZrGwnBsd8jKjPD
         KkbaiEgzw80EG7Z8T6pUx7lQ2JJqUttpaKhr571O0BQoJfgP/4B4QtmkNmBg3sEiWQm1
         Oxl/gThfimsQ7QDt/JZIQqsoaJZRt7Qhfkyt7L7GHXB+j2K1oynFJzyIJikDA0od9Zzk
         9FSde9f38t1W+kHm3StkJoTs0XrWC0X6LjPxJ1tKuR0uQ3VJLGKe05d4ORlBT4f5koFM
         a9mA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0gR2Sq3hWMhALaxX7xvey9FJQhxChl86R9SPPNDVB9s=;
        b=TqSzw3MM+99L/xR+IMS5hAITHDqXzQeHdpbQEMAuqNOk0aIm7rYfIFlcelAQ7H5oYF
         SX5lMRphmPOKSHX/X93lyBVPXHWCVTspGaqSNgaMLv3BfBpL9bMH4A0iZCtYKPETjCev
         4DAN+BbTJqUICTjheLi6gYbwel5qxGyC50JoVbZh3jJn+3ZP8Xm3jjrmszV2W8EzdBUn
         bHYoMQ8++lXmt0flpl2ifuxt52lrJ8uPGg1dOZYMjke0+dlFDtb3G0G7w+gw3L/TctAH
         MXi+Q+/9UwQH2+t9SzZZHGxGCSSDJH8LfgT2t+jjwJPpnCoYaIi2Od63B54mx6G1ZArn
         5xBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0gR2Sq3hWMhALaxX7xvey9FJQhxChl86R9SPPNDVB9s=;
        b=JYDRKD6+piYAJYNNk1k0u4324uXJsqzelOt1cv/10oJMqsAkOdETryD6SOK14q/y/l
         7POxf2Xppc2VL0PmTFs+ndBfPai+34ZQqSYGIbp2o+uDoKUgMH9Fupwu1MkuYhQ/FJwg
         6DKD3CnUPYbWOTVz/EU3vi6UOUgDhH7U5S8WhPEtZo+KjgIzCi6NXtYSEdSV/lc6Ucps
         zJ/EC0T5hli3VhNTiZMcMHN8qaYWFHQ/K6nhWqZeeyU2UFS8Zq6pKZzzlXatln9a23rU
         86Sz8rXZ+Ey3q2CQ1KIp6Az34W2p/wnK3jzeHKgfh+V3XrDJ6U9z0gdraSom85b7eKfb
         J5QA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532Pdr8r/gqMqdSIo12DTKKLMeywv67tgnqzsvVhoM0tJaks9AAJ
	nghT8qOGp10zFUNt2H+Zoec=
X-Google-Smtp-Source: ABdhPJxt7hEXn/DwQqzYMzuGMl9+cc4n0VqBnvYAko6cYOS2WiRTs9yBBOyNv/4ONAJC+XPXERRLag==
X-Received: by 2002:a05:620a:1239:: with SMTP id v25mr4505697qkj.202.1631121850917;
        Wed, 08 Sep 2021 10:24:10 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:e303:: with SMTP id v3ls1818215qkf.5.gmail; Wed, 08 Sep
 2021 10:24:10 -0700 (PDT)
X-Received: by 2002:a05:620a:f8a:: with SMTP id b10mr4599738qkn.424.1631121850618;
        Wed, 08 Sep 2021 10:24:10 -0700 (PDT)
Received: by 2002:a37:4643:0:b0:3fc:63ed:ee86 with SMTP id af79cd13be357-42890cfe985ms85a;
        Sun, 5 Sep 2021 23:37:08 -0700 (PDT)
X-Received: by 2002:ac8:7194:: with SMTP id w20mr9635375qto.217.1630910228058;
        Sun, 05 Sep 2021 23:37:08 -0700 (PDT)
Date: Sun, 5 Sep 2021 23:37:07 -0700 (PDT)
From: Dhiraj Surana <surana.dhiraj@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <0a3e1a93-457c-4362-a13c-39b87d690724n@googlegroups.com>
In-Reply-To: <eff2c74b-046c-443d-9b89-1e0aeadc966e@googlegroups.com>
References: <eff2c74b-046c-443d-9b89-1e0aeadc966e@googlegroups.com>
Subject: Re: iscsiadm: iface iter could not read dir /var/lib/iscsi/nodes/
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6340_264790475.1630910227826"
X-Original-Sender: surana.dhiraj@gmail.com
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

------=_Part_6340_264790475.1630910227826
Content-Type: multipart/alternative; 
	boundary="----=_Part_6341_327959615.1630910227826"

------=_Part_6341_327959615.1630910227826
Content-Type: text/plain; charset="UTF-8"

hi , 

did you get the resolution for this issue , even i am seeing hte similar 
kind of issue while deleting and creating the iscsi and iser session.

20210903 10:44:36 [ 11175] run_system_cmd: Running: iscsiadm -m node 
--targetname iqn.1986-03.com.ibm:2145.stand2fab3plus9.118.54.153.node1 -I 
iface.stand2host1:1 -p 192.170.15.10:3260 --login iscsiadm: Could not 
execute operation on all records: encountered iSCSI database failure 
20210903 10:44:36 [ 11175] run_system_cmd: rc=6, signal=0 core_available=0 
when running iscsiadm -m node --targetname 
iqn.1986-03.com.ibm:2145.stand2fab3plus9.118.54.153.node1 -I 
iface.stand2host1:1 -p 192.170.15.10:3260 --login, 20210903 10:44:36 [ 
11175] ------------------------------------------------------------------ 
run_system_cmd: iscsiadm -m node --targetname 
iqn.1986-03.com.ibm:2145.stand2fab3plus9.118.54.153.node1 -I 
iface.stand2host1:1 -p 192.170.15.10:3260 --login failed, rc=6, signal=0, 
core_available=0 - exiting.... 20210903 10:44:36 [ 11175] 
------------------------------------------------------------------

[root@stand2host1 nodes]# iscsiadm -m node -o delete
iscsiadm: Could not execute operation on all records: encountered iSCSI 
database failure


On Friday, 26 December 2014 at 18:50:50 UTC+5:30 bharatv...@gmail.com wrote:

> Dear All,
>
> I was trying to login to a SAN Device logical volume from my linux server, 
> which is connected to SAN Device with 10Gb NIC card.
> IQN of volume was 
> : iqn.2001-03.jp.nec:storage01:ist-m000-sn-0000000942014090.lx-ddsldset-0018.target0016 
> and I executed command as follows:
>
> "/sbin/iscsiadm -m node -T 
> iqn.2001-03.jp.nec:storage01:ist-m000-sn-0000000942014090.lx-ddsldset-0018.target0016 
> -p 172.168.2.165 --login"
>
> But, it failed with:
> Error Code : 6
> Error message : iscsiadm: iface iter could not read dir 
> /var/lib/iscsi/nodes/iqn.2001-03.jp.nec:storage01:ist-m000-sn-0000000942014090.lx-ddsldset-0048.target0012/
> 172.168.2.165,3260,3.
> iscsiadm: Could not execute operation on all records: encountered iSCSI 
> database failure
>
> This error message was quite confusing as it shows that reading iface for 
> IQN : 
> "iqn.2001-03.jp.nec:storage01:ist-m000-sn-0000000942014090.lx-ddsldset-0048.target0012" 
> failed but I tried login to 
> "iqn.2001-03.jp.nec:storage01:ist-m000-sn-0000000942014090.lx-ddsldset-0018.target0016".
> Moreover, iSCSI session for 
> "iqn.2001-03.jp.nec:storage01:ist-m000-sn-0000000942014090.lx-ddsldset-0048.target0012" 
> was logged out around 6 minutes ago.
>
> I am unaware about the iscsi internals, and could not understand the 
> reason for it.
> I suspect that at the time of iSCSI login all iface are read.
>
> Please help me in this.
>
> Thanks in anticipation.
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/0a3e1a93-457c-4362-a13c-39b87d690724n%40googlegroups.com.

------=_Part_6341_327959615.1630910227826
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hi ,&nbsp;<div><br></div><div>did you get the resolution for this issue , e=
ven i am seeing hte similar kind of issue while deleting and creating the i=
scsi and iser session.</div><div><br></div><div>20210903 10:44:36 [ 11175] =
run_system_cmd: Running: iscsiadm -m node --targetname iqn.1986-03.com.ibm:=
2145.stand2fab3plus9.118.54.153.node1 -I iface.stand2host1:1 -p 192.170.15.=
10:3260 --login
iscsiadm: Could not execute operation on all records: encountered iSCSI dat=
abase failure
20210903 10:44:36 [ 11175] run_system_cmd: rc=3D6, signal=3D0 core_availabl=
e=3D0 when running iscsiadm -m node --targetname iqn.1986-03.com.ibm:2145.s=
tand2fab3plus9.118.54.153.node1 -I iface.stand2host1:1 -p 192.170.15.10:326=
0 --login,
20210903 10:44:36 [ 11175] ------------------------------------------------=
------------------
                           run_system_cmd: iscsiadm -m node --targetname iq=
n.1986-03.com.ibm:2145.stand2fab3plus9.118.54.153.node1 -I iface.stand2host=
1:1 -p 192.170.15.10:3260 --login failed,
                           rc=3D6, signal=3D0, core_available=3D0 - exiting=
....
20210903 10:44:36 [ 11175] ------------------------------------------------=
------------------<br></div><div><br></div><div><div>[root@stand2host1 node=
s]# iscsiadm -m node -o delete</div><div>iscsiadm: Could not execute operat=
ion on all records: encountered iSCSI database failure</div><div><br></div>=
<br></div><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr"=
>On Friday, 26 December 2014 at 18:50:50 UTC+5:30 bharatv...@gmail.com wrot=
e:<br/></div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex=
; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div dir=
=3D"ltr">Dear All,<div><br></div><div>I was trying to login to a SAN Device=
 logical volume from my linux server, which is connected to SAN Device with=
 10Gb NIC card.</div><div>IQN of volume was :=C2=A0iqn.2001-03.jp.nec:stora=
ge01:ist-m000-sn-0000000942014090.lx-ddsldset-0018.target0016 and I execute=
d command as follows:</div><div><br></div><div>&quot;/sbin/iscsiadm -m node=
 -T iqn.2001-03.jp.nec:storage01:ist-m000-sn-0000000942014090.lx-ddsldset-0=
018.target0016 -p 172.168.2.165 --login&quot;</div><div><br></div><div>But,=
 it failed with:</div><div>Error Code : 6</div><div>Error message : iscsiad=
m: iface iter could not read dir /var/lib/iscsi/nodes/iqn.2001-03.jp.nec:st=
orage01:ist-m000-sn-0000000942014090.lx-ddsldset-0048.target0012/<a href=3D=
"http://172.168.2.165" target=3D"_blank" rel=3D"nofollow" data-saferedirect=
url=3D"https://www.google.com/url?hl=3Den-GB&amp;q=3Dhttp://172.168.2.165&a=
mp;source=3Dgmail&amp;ust=3D1630995535356000&amp;usg=3DAFQjCNGMdD_JFFruZLX0=
A7fBwNCH7PdLGw">172.168.2.165</a>,3260,3.</div><div>iscsiadm: Could not exe=
cute operation on all records: encountered iSCSI database failure<br></div>=
<div><br></div><div>This error message was quite confusing as it shows that=
 reading iface for IQN : &quot;iqn.2001-03.jp.nec:storage01:ist-m000-sn-000=
0000942014090.lx-ddsldset-0048.target0012&quot; failed but I tried login to=
 &quot;iqn.2001-03.jp.nec:storage01:ist-m000-sn-0000000942014090.lx-ddsldse=
t-0018.target0016&quot;.</div><div>Moreover, iSCSI session for &quot;iqn.20=
01-03.jp.nec:storage01:ist-m000-sn-0000000942014090.lx-ddsldset-0048.target=
0012&quot; was logged out around 6 minutes ago.</div><div><br></div><div>I =
am unaware about the iscsi internals, and could not understand the reason f=
or it.</div><div>I suspect that at the time of iSCSI login all iface are re=
ad.</div><div><br></div><div>Please help me in this.</div><div><br></div><d=
iv>Thanks in anticipation.</div></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/0a3e1a93-457c-4362-a13c-39b87d690724n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/0a3e1a93-457c-4362-a13c-39b87d690724n%40googlegroups.com</a>.=
<br />

------=_Part_6341_327959615.1630910227826--

------=_Part_6340_264790475.1630910227826--
