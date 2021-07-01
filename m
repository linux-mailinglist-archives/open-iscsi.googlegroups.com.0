Return-Path: <open-iscsi+bncBC5LJAFHUIPRBLGL66DAMGQEACRJYFA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 831413B9466
	for <lists+open-iscsi@lfdr.de>; Thu,  1 Jul 2021 17:56:29 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id h10-20020ac87d4a0000b029024eccb9d079sf3603929qtb.1
        for <lists+open-iscsi@lfdr.de>; Thu, 01 Jul 2021 08:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ad1MA/j7LMlJBoCO2mWnf2K7aSDcRb1TEOGrsNk8KME=;
        b=P+PMKBgIpEBRiwRzKEOHZCvir2zBAsd/5+Jp1R31KSoB88o1oHcxYacSw/TE6QIZKr
         HI/NtF7gB2z1oefSaZ8IynhQaFd9rxi4cEZLP3BJA0eR7KXHiMkAg0pkcFKq0O8ETe+o
         JEOGv/cC6eC7LIeodtUrmqZP1x3SwQDCK+bi+0M12v2VcstKhkA9qFYx8UUFOmS592zl
         xUb1ew4cWFqnT7gR/aBC+AAGKe99xbjhvBymN5ldO9sj0pHmqlDtrbry4jJf76GuuroP
         jgVJe/uGZvKWbyqlm+CugbZuCKqMCM8MkkKHC5V8wI/GjaziHHbdwPgAOVjJEJAhFFtB
         xpoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=4cgroup-co-za.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ad1MA/j7LMlJBoCO2mWnf2K7aSDcRb1TEOGrsNk8KME=;
        b=yCJ2816kIiPQt4PrtqcsqPtI9MW/y3ycy/rIZFeR2Zn6uLs0YuUSrB5ID/XVfWsJUw
         H2CPj1DOZDeCSrPqiGLUpNf4NW1mGNS+XFq/5O2AJLdQ9zk0QMRpD2q9ntR3q0iR+o1l
         CrssMvkGDzucJh0vwhQxBJkeyeciydUPNBxOizZnJVFRTRhYC1PYEAXrq02wrIaqaP8k
         y16CoZMnMRSsfVttIjeXd5X2Zl0HzC4fNH2gjOFT1NmCjnjMWlezz+d2GlwplIlHo7QO
         bZ5iNB7BVbak0GDueMBEbhNrwn3C40ezbKBjNx/PV7SLtOXa3g4RVuHEfQQrU06xYm+5
         BQYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ad1MA/j7LMlJBoCO2mWnf2K7aSDcRb1TEOGrsNk8KME=;
        b=mdWC+ed1VrReMJTaoeW5PVoC0UpkhPMA7SN58ZcSap7NsSiwwNEI2jQoPAVBJQGli9
         Hc3VxJglvYbPKAt9AJOWncuW2GyDFfkmbGApdzqiIkVgg0nRhAbJlz/LqWSUVq+5t3xf
         JzzN9wACrIXiYtncksONDMOJbYxQVwBnIFpIeiQSgfERRcUv/rVU0i0yOcgBZt0PIvOh
         +1zmgC5bVonROw1iVizI0J23hd1V/ojG4DqjUSJqTySOIPiP8U0H3p/Ttl9ewbFXRe/P
         OfZCwwSV5gCga4ZsxIFLWP/xGzWwjP9yAwpMq3RvWb8FnsS5MlecdFzZqcLkmpUBIqvp
         Z6gQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533ZcSPiXDltquRZyt+4BN+0U25OVXMJLXYCZLYSI+s9+zyIwAzt
	0cx4TeKeuPtAR3ITMf/Z4vk=
X-Google-Smtp-Source: ABdhPJwDboFAIagE/WhaiPFD2W+Cy21x4c+FA4XkesBYVJiIHItFpLeKYN9xwBUmOvMjvIzO3USg/w==
X-Received: by 2002:a05:622a:34a:: with SMTP id r10mr646520qtw.94.1625154988630;
        Thu, 01 Jul 2021 08:56:28 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:148c:: with SMTP id w12ls4022452qkj.11.gmail; Thu,
 01 Jul 2021 08:56:28 -0700 (PDT)
X-Received: by 2002:a37:70d:: with SMTP id 13mr725449qkh.240.1625154987873;
        Thu, 01 Jul 2021 08:56:27 -0700 (PDT)
Date: Thu, 1 Jul 2021 08:56:27 -0700 (PDT)
From: Riaan Pretorius <riaan.pretorius@4cgroup.co.za>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <b5244724-f131-4ad7-9db2-a3ca3c0548d1n@googlegroups.com>
In-Reply-To: <303b57a8-5d06-44ef-9212-ee350ea6bd1fn@googlegroups.com>
References: <07b30064-72b3-42c1-ae71-f40c885c06ffn@googlegroups.com>
 <60DC55B5020000A100042163@gwsmtp.uni-regensburg.de>
 <B3425A37-BF5B-48DE-A3DB-3DFC856F19E7@comcast.net>
 <f3e8a3df-cfb2-4913-b518-e01a801614dbn@googlegroups.com>
 <303b57a8-5d06-44ef-9212-ee350ea6bd1fn@googlegroups.com>
Subject: Re: Antw: [EXT] ISCSI Target and Initiator on same host
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1430_1177860234.1625154987232"
X-Original-Sender: riaan.pretorius@4cgroup.co.za
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

------=_Part_1430_1177860234.1625154987232
Content-Type: multipart/alternative; 
	boundary="----=_Part_1431_1324834227.1625154987232"

------=_Part_1431_1324834227.1625154987232
Content-Type: text/plain; charset="UTF-8"

Hi All,

Thank you all for your comments. I have originally wondered if it was 
possible to share the target to the host itself and that was answered as a 
yes. that lead me to "I must be doing something wrong". It turns out it was 
2 things. 

1st the way I created my LUNs was wrong and 2nd forgot about the ACL. After 
I reviewed those 2 things, everything is working as expected.  Just had to 
re-read the examples i was working from to better understand the issue. 

Original way:
asmdatadisk4 is a udev raw device

/iscsi> 
create iqn.2021-04.local.poc-ora-cluster1:asmdatadisk4
cd iqn.2021-04.local.poc-ora-cluster1:asmdatadisk4/tpg1/
luns/ create/backstores/block/asmdatadisk4
acls/ create iqn.2021-04.local.poc-ora-cluster1:asmdatadisk4
set attribute authentication=0
set attribute generate_node_acls=1
set attribute demo_mode_write_protect=0
cd ../..


Working way:
cd /backstores/block
create name=LUN_0 dev=/dev/sdf
create name=LUN_1 dev=/dev/sdd
create name=LUN_2 dev=/dev/sde

cd /iscsi
create
ls
cd 
iqn.2003-01.org.linux-iscsi.poc-ora-cluster1.x8664:sn.d67e31a1c6f9/tpg1/luns

create /backstores/block/LUN_0
create /backstores/block/LUN_1
create /backstores/block/LUN_2

and of course this line for ACL
cd 
/iscsi/iqn.2003-01.org.linux-iscsi.poc-ora-cluster1.x8664:sn.d67e31a1c6f9/tpg1
set attribute authentication=0 demo_mode_write_protect=0 
generate_node_acls=1 cache_dynamic_acls=1


Apologies for not replying sooner, was working on getting this demo going.
On Thursday, 1 July 2021 at 17:37:15 UTC+2 The Lee-Man wrote:

> I need a bit more information about your setup. What target are you using? 
> I'm guessing LIO, since that's the most common (using targetcli), but there 
> are others, and each one is different with respect to ACLs, using 
> passwords, etc.
>
> I use LIO/targetcli, and I usually work with the initiator and target on 
> the same system, no problem. This is a network protocol, so it shouldn't 
> matter if the initiator and target are on the same system or miles apart, 
> as long as they are connected via the network.
>
> With LIO, you have to either add your initiator IQN to the ACL for the 
> target, or you need to put the target in "demo" mode. Though poorly named, 
> demo mode allows connection without ACLs (it generates the ACLs on the fly).
>
> Are you using initiator and/or target name/password protection? If so, 
> that adds a layer of complication. For testing, I do not set up any 
> names/passwords.
>
> How to you try to connect to your target? What distribution are you on and 
> what version of that distro? Do you run iscsi discovery first, then 
> connect? Show us the sequence of commands you use, and the actual error 
> messages you say you are getting?
>
> Are you setting up the target the automatically reconnect on each reboot? 
> If so, the steps you take to do that may differ per distrubution. And what 
> systemd services do you have running?
>
> You need to supply much more information, in general, when asking for 
> technical help. :)
>
> On Wednesday, June 30, 2021 at 8:15:03 AM UTC-7 riaan.p...@4cgroup.co.za 
> wrote:
>
>> I get strange messages in my logs when i tried do that. and get disk 
>> "flapping" when the disk just appear and reappear continuously after a 
>> reboot.   logically it would make sense that you can do this, but 
>> practically  there is weird issues. Would you guys say it might be a 
>> misconfiguration ?
>>
>> On Wednesday, 30 June 2021 at 15:10:54 UTC+2 Paul Koning wrote:
>>
>>>
>>>
>>> > On Jun 30, 2021, at 7:29 AM, Ulrich Windl <
>>> Ulrich...@rz.uni-regensburg.de> wrote: 
>>> > 
>>> > I think I did that about 10 years ago... 
>>> > 
>>> >>>> Riaan Pretorius <riaan.p...@4cgroup.co.za> schrieb am 30.06.2021 
>>> um 12:41 
>>> > in Nachricht <07b30064-72b3-42c1...@googlegroups.com>: 
>>> >> I have an interesting question to ask: 
>>> >> 
>>> >> Is it possible to share the target on the same server as a initiator 
>>> ? 
>>> >> e.g. server1: target -> server1: initiator 
>>>
>>> Yes, I've used that in a test setup when I needed to put a file system 
>>> on iSCSI (to test pNFS). 
>>>
>>> paul 
>>>
>>>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/b5244724-f131-4ad7-9db2-a3ca3c0548d1n%40googlegroups.com.

------=_Part_1431_1324834227.1625154987232
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<div><br></div><div>Thank you all for your comments. I have original=
ly wondered if it was possible to share the target to the host itself and t=
hat was answered as a yes. that lead me to "I must be doing something wrong=
". It turns out it was 2 things.&nbsp;</div><div><br></div><div>1st the way=
 I created my LUNs was wrong and 2nd forgot about the ACL. After I reviewed=
 those 2 things, everything is working as expected.&nbsp; Just had to re-re=
ad the examples i was working from to better understand the issue.&nbsp;<br=
></div><div><br></div><div>Original way:</div><div>asmdatadisk4 is a udev r=
aw device<br></div><div><br></div><div><div>/iscsi&gt;&nbsp;</div><div>crea=
te iqn.2021-04.local.poc-ora-cluster1:asmdatadisk4</div><div>cd iqn.2021-04=
.local.poc-ora-cluster1:asmdatadisk4/tpg1/</div><div>luns/ create/backstore=
s/block/asmdatadisk4</div><div>acls/ create iqn.2021-04.local.poc-ora-clust=
er1:asmdatadisk4</div><div>set attribute authentication=3D0</div><div>set a=
ttribute generate_node_acls=3D1</div><div>set attribute demo_mode_write_pro=
tect=3D0</div><div>cd ../..</div></div><div><br></div><div><br></div><div>W=
orking way:</div><div><div>cd /backstores/block</div><div>create name=3DLUN=
_0 dev=3D/dev/sdf</div><div>create name=3DLUN_1 dev=3D/dev/sdd</div><div>cr=
eate name=3DLUN_2 dev=3D/dev/sde</div><div><br></div><div>cd /iscsi</div><d=
iv>create</div></div><div><div>ls</div><div>cd iqn.2003-01.org.linux-iscsi.=
poc-ora-cluster1.x8664:sn.d67e31a1c6f9/tpg1/luns</div><div><br></div><div>c=
reate /backstores/block/LUN_0</div><div>create /backstores/block/LUN_1</div=
><div>create /backstores/block/LUN_2</div></div><div><br></div><div>and of =
course this line for ACL</div><div><div>cd /iscsi/iqn.2003-01.org.linux-isc=
si.poc-ora-cluster1.x8664:sn.d67e31a1c6f9/tpg1</div><div>set attribute auth=
entication=3D0 demo_mode_write_protect=3D0 generate_node_acls=3D1 cache_dyn=
amic_acls=3D1</div></div><div><br></div><div><br></div><div>Apologies for n=
ot replying sooner, was working on getting this demo going.</div><div class=
=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Thursday, 1 July=
 2021 at 17:37:15 UTC+2 The Lee-Man wrote:<br/></div><blockquote class=3D"g=
mail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 2=
04, 204); padding-left: 1ex;"><div>I need a bit more information about your=
 setup. What target are you using? I&#39;m guessing LIO, since that&#39;s t=
he most common (using targetcli), but there are others, and each one is dif=
ferent with respect to ACLs, using passwords, etc.</div><div><br></div><div=
>I use LIO/targetcli, and I usually work with the initiator and target on t=
he same system, no problem. This is a network protocol, so it shouldn&#39;t=
 matter if the initiator and target are on the same system or miles apart, =
as long as they are connected via the network.</div><div><br></div><div>Wit=
h LIO, you have to either add your initiator IQN to the ACL for the target,=
 or you need to put the target in &quot;demo&quot; mode. Though poorly name=
d, demo mode allows connection without ACLs (it generates the ACLs on the f=
ly).</div><div><br></div><div>Are you using initiator and/or target name/pa=
ssword protection? If so, that adds a layer of complication. For testing, I=
 do not set up any names/passwords.</div><div><br></div><div>How to you try=
 to connect to your target? What distribution are you on and what version o=
f that distro? Do you run iscsi discovery first, then connect? Show us the =
sequence of commands you use, and the actual error messages you say you are=
 getting?</div><div><br></div><div>Are you setting up the target the automa=
tically reconnect on each reboot? If so, the steps you take to do that may =
differ per distrubution. And what systemd services do you have running?</di=
v><div><br></div><div>You need to supply much more information, in general,=
 when asking for technical help. :)<br></div><br><div class=3D"gmail_quote"=
><div dir=3D"auto" class=3D"gmail_attr">On Wednesday, June 30, 2021 at 8:15=
:03 AM UTC-7 <a href data-email-masked rel=3D"nofollow">riaan.p...@4cgroup.=
co.za</a> wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I get=
 strange messages in my logs when i tried do that. and get disk &quot;flapp=
ing&quot; when the disk just appear and reappear continuously after a reboo=
t.=C2=A0 =C2=A0logically it would make sense that you can do this, but prac=
tically=C2=A0 there is weird issues. Would you guys say it might be a misco=
nfiguration ?<br><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"=
gmail_attr">On Wednesday, 30 June 2021 at 15:10:54 UTC+2 Paul Koning wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
<br>&gt; On Jun 30, 2021, at 7:29 AM, Ulrich Windl &lt;<a rel=3D"nofollow">=
Ulrich...@rz.uni-regensburg.de</a>&gt; wrote:
<br>&gt;=20
<br>&gt; I think I did that about 10 years ago...
<br>&gt;=20
<br>&gt;&gt;&gt;&gt; Riaan Pretorius &lt;<a rel=3D"nofollow">riaan.p...@4cg=
roup.co.za</a>&gt; schrieb am 30.06.2021 um 12:41
<br>&gt; in Nachricht &lt;<a rel=3D"nofollow">07b30064-72b3-42c1...@googleg=
roups.com</a>&gt;:
<br>&gt;&gt; I have an interesting question to ask:
<br>&gt;&gt;=20
<br>&gt;&gt; Is it possible to share the target on the same server as a ini=
tiator ?
<br>&gt;&gt; e.g. server1: target -&gt; server1: initiator=20
<br>
<br>Yes, I&#39;ve used that in a test setup when I needed to put a file sys=
tem on iSCSI (to test pNFS).
<br>
<br>	paul
<br>
<br></blockquote></div></blockquote></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/b5244724-f131-4ad7-9db2-a3ca3c0548d1n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/b5244724-f131-4ad7-9db2-a3ca3c0548d1n%40googlegroups.com</a>.=
<br />

------=_Part_1431_1324834227.1625154987232--

------=_Part_1430_1177860234.1625154987232--
