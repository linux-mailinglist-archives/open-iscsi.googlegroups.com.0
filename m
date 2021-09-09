Return-Path: <open-iscsi+bncBC755V5RXMKBBR4K5KEQMGQENR7PWAI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BB5405F3A
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Sep 2021 00:06:00 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id t18-20020a05620a0b1200b003f8729fdd04sf9750978qkg.5
        for <lists+open-iscsi@lfdr.de>; Thu, 09 Sep 2021 15:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=BWfTvuAIABYYMXN1zgadDfJozwl26VxmbQqZqy7Lps4=;
        b=RV/Z15sNMgiv+xsyVKS3fKsVBkFpPO3WX+SnYh5FHQO0o+X1m/qsmuCrCZaUpmx3B1
         jpT/KCXL9buFwOEg7zs86iXODNtC3bCQ63g6BWED/RB0W9Qfkukcwcr6Jaf1GvflukF3
         O8hnBi21+2AE+Emb6q+F6Nr218keUsgMAK0+PrTd3/txxJJfS+NJhO9OYl0naePwZqdz
         iIzA/pkjGdKdDG9GdpOyKAX5gAH8ppuGhqhGs825uwfXWF0zChTNLGBYDZ+7bss4+HwQ
         BpmV+TxLvV5SINs0qRvlpqfj54Y+CUHuBn1zHnwZQGvv/OjM/tMGLSJhNt4JCZu1qkCS
         Nazw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BWfTvuAIABYYMXN1zgadDfJozwl26VxmbQqZqy7Lps4=;
        b=nn1jEyb61C7ZO6I6FGHc4kYzX4XLMDGPCkIvcdJ/vDhH8QWg06bSQCAydg+gTy4+oI
         Dzu7F2pO1EVmT2gLGHrtD3g8Gg/Nf6YDr7UIh3w6OAzfotf8EzV6ooMKT9Jugqsb8hNy
         KpYkCA4UtwMFW8odEcCjW+HHMvRd/zWvb4sNIe3r0oBQejN7Bk4WX5rWMb9zYwq0I2D+
         egn4ZiD5E4lEiH5D6E9vfs/Hih1+m8DAcc7gXRamqpEsgXeRGbzMNtsFbmCxJqjQzGSO
         TgP7RBBvzk5nUJAvIPPogeF5+EJdOCObwmoKZ8PlZmY1rVOKU8UKj67XWaVpQlhDsK8R
         zLZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BWfTvuAIABYYMXN1zgadDfJozwl26VxmbQqZqy7Lps4=;
        b=qkOgt/04s95wsSSqxnABbiN25WG/m1KEqdzZiq8mQqB0YzWgGxQq6fdJptJbmiHqMF
         VU+w9ByGTAsE1nnhuJYCjTX3FIwy9RDlKXUvcHD10hXQFQN3eXJvK0pCfFMZKMWX5UrZ
         kEWvhPx5qE4h1ORTW/VYnVnknMgVF5g0KwwG2g5zdImYcqWkruayGWqpruZ1GugIH1mT
         9wUS1jXCce5G4KHRseFkgHFYKgqQLsQNdhUUL1i4MkqQ4hpp0WizUIZt0IVkF2pivS1g
         mgDGeJthgTuUHOK24qArBPPn4lrBIqt7/BnV2PqnOJsZZVrnPzUK8UP7id4cyM+8AYjl
         tdgw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532oXYmWhVI9NrYfEYvGvytRsY/Pxv6fUI4DvqMB+GtRMFqPKaVi
	q+gFkmj81i/fC83jSl4wpYs=
X-Google-Smtp-Source: ABdhPJzEZVVNiOWcWzIGdxkg1xK06BaBXzE/reDTXgCj7qux4BXGUR8Xc4XMP7nHkSSTbYZSeyk/iA==
X-Received: by 2002:a0c:d804:: with SMTP id h4mr5442582qvj.37.1631225159178;
        Thu, 09 Sep 2021 15:05:59 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:628c:: with SMTP id w134ls2277267qkb.7.gmail; Thu, 09
 Sep 2021 15:05:58 -0700 (PDT)
X-Received: by 2002:ae9:de06:: with SMTP id s6mr5049251qkf.489.1631225158431;
        Thu, 09 Sep 2021 15:05:58 -0700 (PDT)
Date: Thu, 9 Sep 2021 15:05:57 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <83e04502-b97c-4d5d-8a31-be038a788df9n@googlegroups.com>
In-Reply-To: <0a3e1a93-457c-4362-a13c-39b87d690724n@googlegroups.com>
References: <eff2c74b-046c-443d-9b89-1e0aeadc966e@googlegroups.com>
 <0a3e1a93-457c-4362-a13c-39b87d690724n@googlegroups.com>
Subject: Re: iscsiadm: iface iter could not read dir /var/lib/iscsi/nodes/
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2399_1373382878.1631225157758"
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

------=_Part_2399_1373382878.1631225157758
Content-Type: multipart/alternative; 
	boundary="----=_Part_2400_827958472.1631225157758"

------=_Part_2400_827958472.1631225157758
Content-Type: text/plain; charset="UTF-8"

Hi!

My apologies to bharatvivek2972. I believe Mike, who was answering 
questions here, moved on from open-iscsi, and I didn't notice this thread 
needed more attention.

I believe the problem here is that iscsiadm is not set up for parallel 
operation. So no, you can not run logins in parallel.

But, there is a new "no wait" option that one could pass to iscsiadm that 
would speed up such serialized requests. It's the "-W"/"--no_wait". Your 
distro may not have this feature yet, but it's upstream, and it tells 
iscsiadm not to wait for the login to complete. When the caller uses this 
option, iscsiadm returns as soon as it has sent the login request to the 
target. The login either fails or succeeds, in the background, as managed 
by iscsid. It's up to the caller to poll or check for success. Using this 
option, one could do:

/sbin/iscsiadm -m node -T <IQN-1> -p <PORT> --login -W
 /sbin/iscsiadm -m node -T <IQN-2> -p <PORT> --login -W
 /sbin/iscsiadm -m node -T <IQN-3> -p <PORT> --logiDhirajn -W
 /sbin/iscsiadm -m node -T <IQN-4> -p <PORT> --login -W

Of course, it might be faster to run:

/sbin/iscsiadm -m node -l -W

i.e. let iscsiadm log into all the targets in the node database, but in the 
case where you only want some of the targets to be logged into, the above 
should work.

In your case Dhiraj I'm not sure you are doing things in parallel. Are you? 
It might be that the node database was screwed up by some earlier parallel 
operation(s)?

On Wednesday, September 8, 2021 at 10:24:12 AM UTC-7 Dhiraj Surana wrote:

> hi , 
>
> did you get the resolution for this issue , even i am seeing hte similar 
> kind of issue while deleting and creating the iscsi and iser session.
>
> 20210903 10:44:36 [ 11175] run_system_cmd: Running: iscsiadm -m node 
> --targetname iqn.1986-03.com.ibm:2145.stand2fab3plus9.118.54.153.node1 -I 
> iface.stand2host1:1 -p 192.170.15.10:3260 --login iscsiadm: Could not 
> execute operation on all records: encountered iSCSI database failure 
> 20210903 10:44:36 [ 11175] run_system_cmd: rc=6, signal=0 core_available=0 
> when running iscsiadm -m node --targetname 
> iqn.1986-03.com.ibm:2145.stand2fab3plus9.118.54.153.node1 -I 
> iface.stand2host1:1 -p 192.170.15.10:3260 --login, 20210903 10:44:36 [ 
> 11175] ------------------------------------------------------------------ 
> run_system_cmd: iscsiadm -m node --targetname 
> iqn.1986-03.com.ibm:2145.stand2fab3plus9.118.54.153.node1 -I 
> iface.stand2host1:1 -p 192.170.15.10:3260 --login failed, rc=6, signal=0, 
> core_available=0 - exiting.... 20210903 10:44:36 [ 11175] 
> ------------------------------------------------------------------
>
> [root@stand2host1 nodes]# iscsiadm -m node -o delete
> iscsiadm: Could not execute operation on all records: encountered iSCSI 
> database failure
>
>
> On Friday, 26 December 2014 at 18:50:50 UTC+5:30 bharatv...@gmail.com 
> wrote:
>
>> Dear All,
>>
>> I was trying to login to a SAN Device logical volume from my linux 
>> server, which is connected to SAN Device with 10Gb NIC card.
>> IQN of volume was 
>> : iqn.2001-03.jp.nec:storage01:ist-m000-sn-0000000942014090.lx-ddsldset-0018.target0016 
>> and I executed command as follows:
>>
>> "/sbin/iscsiadm -m node -T 
>> iqn.2001-03.jp.nec:storage01:ist-m000-sn-0000000942014090.lx-ddsldset-0018.target0016 
>> -p 172.168.2.165 --login"
>>
>> But, it failed with:
>> Error Code : 6
>> Error message : iscsiadm: iface iter could not read dir 
>> /var/lib/iscsi/nodes/iqn.2001-03.jp.nec:storage01:ist-m000-sn-0000000942014090.lx-ddsldset-0048.target0012/
>> 172.168.2.165,3260,3.
>> iscsiadm: Could not execute operation on all records: encountered iSCSI 
>> database failure
>>
>> This error message was quite confusing as it shows that reading iface for 
>> IQN : 
>> "iqn.2001-03.jp.nec:storage01:ist-m000-sn-0000000942014090.lx-ddsldset-0048.target0012" 
>> failed but I tried login to 
>> "iqn.2001-03.jp.nec:storage01:ist-m000-sn-0000000942014090.lx-ddsldset-0018.target0016".
>> Moreover, iSCSI session for 
>> "iqn.2001-03.jp.nec:storage01:ist-m000-sn-0000000942014090.lx-ddsldset-0048.target0012" 
>> was logged out around 6 minutes ago.
>>
>> I am unaware about the iscsi internals, and could not understand the 
>> reason for it.
>> I suspect that at the time of iSCSI login all iface are read.
>>
>> Please help me in this.
>>
>> Thanks in anticipation.
>>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/83e04502-b97c-4d5d-8a31-be038a788df9n%40googlegroups.com.

------=_Part_2400_827958472.1631225157758
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi!</div><div><br></div><div>My apologies to <span>bharatvivek2972. I =
believe Mike, who was answering questions here, moved on from open-iscsi, a=
nd I didn't notice this thread needed more attention.</span></div><div><spa=
n><br></span></div><div><span>I believe the problem here is that iscsiadm i=
s not set up for parallel operation. So no, you can not run logins in paral=
lel.</span></div><div><span><br></span></div><div><span>But, there is a new=
 "no wait" option that one could pass to iscsiadm that would speed up such =
serialized requests. It's the "-W"/"--no_wait". Your distro may not have th=
is feature yet, but it's upstream, and it tells iscsiadm not to wait for th=
e login to complete. When the caller uses this option, iscsiadm returns as =
soon as it has sent the login request to the target. The login either fails=
 or succeeds, in the background, as managed by iscsid. It's up to the calle=
r to poll or check for success. Using this option, one could do:</span></di=
v><div><span style=3D"color: black;"><br></span></div><div><div><span style=
=3D"color: yellow;"><span style=3D"color: black;">/sbin/iscsiadm -m node -T=
 &lt;IQN-1&gt; -p &lt;PORT&gt; --login -W<br></span></span></div><div><span=
 style=3D"color: black;">&nbsp;/sbin/iscsiadm -m node -T &lt;IQN-2&gt; -p &=
lt;PORT&gt; --login -W<br></span></div><div><span style=3D"color: black;">&=
nbsp;/sbin/iscsiadm -m node -T &lt;IQN-3&gt; -p &lt;PORT&gt; --logi<span>Dh=
iraj</span>n -W<br></span></div><div><span style=3D"color: black;">&nbsp;/s=
bin/iscsiadm -m node -T &lt;IQN-4&gt; -p &lt;PORT&gt; --login -W<br></span>=
</div><span style=3D"color: black;"></span></div><span style=3D"color: blac=
k;"></span><div><br></div><div>Of course, it might be faster to run:</div><=
div><br></div><div>/sbin/iscsiadm -m node -l -W</div><div><br></div><div>i.=
e. let iscsiadm log into all the targets in the node database, but in the c=
ase where you only want some of the targets to be logged into, the above sh=
ould work.</div><div><br></div><div>In your case <span>Dhiraj I'm not sure =
you are doing things in parallel. Are you? It might be that the node databa=
se was screwed up by some earlier parallel operation(s)?</span></div><div><=
span><br></span></div><div class=3D"gmail_quote"><div dir=3D"auto" class=3D=
"gmail_attr">On Wednesday, September 8, 2021 at 10:24:12 AM UTC-7 Dhiraj Su=
rana wrote:<br/></div><blockquote class=3D"gmail_quote" style=3D"margin: 0 =
0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">h=
i ,=C2=A0<div><br></div><div>did you get the resolution for this issue , ev=
en i am seeing hte similar kind of issue while deleting and creating the is=
csi and iser session.</div><div><br></div><div>20210903 10:44:36 [ 11175] r=
un_system_cmd: Running: iscsiadm -m node --targetname iqn.1986-03.com.ibm:2=
145.stand2fab3plus9.118.54.153.node1 -I iface.stand2host1:1 -p <a href=3D"h=
ttp://192.170.15.10:3260" target=3D"_blank" rel=3D"nofollow" data-saferedir=
ecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://192.170.15.10:3=
260&amp;source=3Dgmail&amp;ust=3D1631301886748000&amp;usg=3DAFQjCNHUzQM17Sr=
hGoL5V49EY_qjCd1SYA">192.170.15.10:3260</a> --login
iscsiadm: Could not execute operation on all records: encountered iSCSI dat=
abase failure
20210903 10:44:36 [ 11175] run_system_cmd: rc=3D6, signal=3D0 core_availabl=
e=3D0 when running iscsiadm -m node --targetname iqn.1986-03.com.ibm:2145.s=
tand2fab3plus9.118.54.153.node1 -I iface.stand2host1:1 -p <a href=3D"http:/=
/192.170.15.10:3260" target=3D"_blank" rel=3D"nofollow" data-saferedirectur=
l=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://192.170.15.10:3260&a=
mp;source=3Dgmail&amp;ust=3D1631301886748000&amp;usg=3DAFQjCNHUzQM17SrhGoL5=
V49EY_qjCd1SYA">192.170.15.10:3260</a> --login,
20210903 10:44:36 [ 11175] ------------------------------------------------=
------------------
                           run_system_cmd: iscsiadm -m node --targetname iq=
n.1986-03.com.ibm:2145.stand2fab3plus9.118.54.153.node1 -I iface.stand2host=
1:1 -p <a href=3D"http://192.170.15.10:3260" target=3D"_blank" rel=3D"nofol=
low" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhtt=
p://192.170.15.10:3260&amp;source=3Dgmail&amp;ust=3D1631301886748000&amp;us=
g=3DAFQjCNHUzQM17SrhGoL5V49EY_qjCd1SYA">192.170.15.10:3260</a> --login fail=
ed,
                           rc=3D6, signal=3D0, core_available=3D0 - exiting=
....
20210903 10:44:36 [ 11175] ------------------------------------------------=
------------------<br></div><div><br></div><div><div>[root@stand2host1 node=
s]# iscsiadm -m node -o delete</div></div><div><div>iscsiadm: Could not exe=
cute operation on all records: encountered iSCSI database failure</div><div=
><br></div><br></div><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"=
gmail_attr">On Friday, 26 December 2014 at 18:50:50 UTC+5:30 <a href data-e=
mail-masked rel=3D"nofollow">bharatv...@gmail.com</a> wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Dear All,<div><br><=
/div><div>I was trying to login to a SAN Device logical volume from my linu=
x server, which is connected to SAN Device with 10Gb NIC card.</div><div>IQ=
N of volume was :=C2=A0iqn.2001-03.jp.nec:storage01:ist-m000-sn-00000009420=
14090.lx-ddsldset-0018.target0016 and I executed command as follows:</div><=
div><br></div><div>&quot;/sbin/iscsiadm -m node -T iqn.2001-03.jp.nec:stora=
ge01:ist-m000-sn-0000000942014090.lx-ddsldset-0018.target0016 -p 172.168.2.=
165 --login&quot;</div><div><br></div><div>But, it failed with:</div><div>E=
rror Code : 6</div><div>Error message : iscsiadm: iface iter could not read=
 dir /var/lib/iscsi/nodes/iqn.2001-03.jp.nec:storage01:ist-m000-sn-00000009=
42014090.lx-ddsldset-0048.target0012/<a href=3D"http://172.168.2.165" rel=
=3D"nofollow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.=
com/url?hl=3Den&amp;q=3Dhttp://172.168.2.165&amp;source=3Dgmail&amp;ust=3D1=
631301886748000&amp;usg=3DAFQjCNEbj1obTbDDLEecFVwxXZv69r_76g">172.168.2.165=
</a>,3260,3.</div><div>iscsiadm: Could not execute operation on all records=
: encountered iSCSI database failure<br></div><div><br></div><div>This erro=
r message was quite confusing as it shows that reading iface for IQN : &quo=
t;iqn.2001-03.jp.nec:storage01:ist-m000-sn-0000000942014090.lx-ddsldset-004=
8.target0012&quot; failed but I tried login to &quot;iqn.2001-03.jp.nec:sto=
rage01:ist-m000-sn-0000000942014090.lx-ddsldset-0018.target0016&quot;.</div=
><div>Moreover, iSCSI session for &quot;iqn.2001-03.jp.nec:storage01:ist-m0=
00-sn-0000000942014090.lx-ddsldset-0048.target0012&quot; was logged out aro=
und 6 minutes ago.</div><div><br></div><div>I am unaware about the iscsi in=
ternals, and could not understand the reason for it.</div><div>I suspect th=
at at the time of iSCSI login all iface are read.</div><div><br></div><div>=
Please help me in this.</div><div><br></div><div>Thanks in anticipation.</d=
iv></div></blockquote></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/83e04502-b97c-4d5d-8a31-be038a788df9n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/83e04502-b97c-4d5d-8a31-be038a788df9n%40googlegroups.com</a>.=
<br />

------=_Part_2400_827958472.1631225157758--

------=_Part_2399_1373382878.1631225157758--
