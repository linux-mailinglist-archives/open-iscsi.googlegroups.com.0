Return-Path: <open-iscsi+bncBC24JGEJRMKRB7P7RTXAKGQEJNC6VFQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8690DF2110
	for <lists+open-iscsi@lfdr.de>; Wed,  6 Nov 2019 22:49:50 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id m20sf27672529qtq.16
        for <lists+open-iscsi@lfdr.de>; Wed, 06 Nov 2019 13:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=xxZDaVIisyKYbHjoqslP5mNETJ2U4QE/rC8E4RaWmSI=;
        b=ZhAQ9B/g0IyuVdG3UWAjgUTBKMzq0YULjQ8ICJccjvjYBvs2FqoKXBeYt95uApTq56
         BRST2Lekp6kuc3GQ7BLGg1hI+vAoYKFmSw/MwdUvPCcy1za6Md8rrOeJJKy8G0VOdyeV
         58+zPjnv8f+QbsuPO7oQAGprjPpTSILZ8kj4QwoSkhasl1GGUxKedfg9v8fytfN9UaW3
         JEViTTIlMRTuzz/z0Xg69qPqfpK2Z+eB5NJRx5WX2Omq4cot++vk5ZI2ook4LggnnWbj
         tny2UQ/uzP7lOZjEaq1DqrjmEsWlK5Pn6PtXUIAGEFYRo9fHYY+80mlm4kpDPA4AUrn6
         Bd5Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xxZDaVIisyKYbHjoqslP5mNETJ2U4QE/rC8E4RaWmSI=;
        b=kjXw3Esz76vKu68qWrSYV8rAgLbWIH7uB8yeHUbT38dA2aFdaY4/9mMEe8QYsOmZ6j
         xBCbmT6KlgFjNgDC8rj35yTR4UE+zK0rxPa10Iqnqv98CabxVB6nmjZqxh/4PxLEYFz5
         kBsUJqlncwsdZzAimBGbyZmNMnH0o/jRtFUbZwkPi7ncyj1b2XFx7accbxmxTt6yD2YH
         ksmCJD+e7tPOHm4rFz2eEuZOCiwXzApTzyCXTqReSWOH4RYoqbup8ZSAKBAhxGknRll0
         3JyQB2ndW4umKx0+EhmuSOUiDtAIhGzIxbfDgBLX116Fo44j36vsZl46OSStmcBAGWeQ
         Cmhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xxZDaVIisyKYbHjoqslP5mNETJ2U4QE/rC8E4RaWmSI=;
        b=HsxpWdK+8X5qj+Tm9UaIdlSV1Uun2tpgRWqYYh0+kVq+3XmB4gEoff2MSrx+xBdmvF
         QjmiqqbrFVhK4TIRsPT5an4IsPHjP8gUcaKOpokrLYI15RWifh5I2gywU200MFdESkhf
         XKJoWIO1Tu7iy+ATZnnjkLOAUW0ZXlo6qNlwUDrV4YbpvqXzMpapRack3DATVZe1wYjN
         t1R1fTiFOuqL/aP7JAwEhIV4lkA0t8ILq88n+qSYS0+71fHOk2y7n03lb8vd3uuEJf9e
         jeAggFGeeLH20Dn10NIgGIngk0ocVIsnNB+U4DUI9flmbY6KmjbVJnAVtAek9MUKDuR7
         QCRw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWRmP10e1nNimVCTzpcaqhBLPIEaOnk0jSVCaqY/dy5OGJjyQYo
	jmQFh7+9SKD0oPqTUwqFk+g=
X-Google-Smtp-Source: APXvYqzIp6kBnEFFe0bHc8WeUwbU4K9V6xw7ygvgnwYDJagBWpE8sFpfScOFcoJvb/vobPOhF7nHEA==
X-Received: by 2002:ad4:4e2c:: with SMTP id dm12mr25557qvb.195.1573076989292;
        Wed, 06 Nov 2019 13:49:49 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:4cf:: with SMTP id 15ls1269514qks.10.gmail; Wed, 06
 Nov 2019 13:49:48 -0800 (PST)
X-Received: by 2002:ae9:f804:: with SMTP id x4mr4010640qkh.284.1573076988713;
        Wed, 06 Nov 2019 13:49:48 -0800 (PST)
Date: Wed, 6 Nov 2019 13:49:48 -0800 (PST)
From: Bobby <italienisch1987@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <0c2592cf-ad61-4fe4-8006-63edabe4af7f@googlegroups.com>
In-Reply-To: <3db42c4c-1a52-4716-ae8f-fe289da32cc0@googlegroups.com>
References: <8a89dcdb-8fae-4c97-9a76-db621b01bcaf@googlegroups.com>
 <3db42c4c-1a52-4716-ae8f-fe289da32cc0@googlegroups.com>
Subject: Re: iSCSI packet generator
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2198_1422145442.1573076988100"
X-Original-Sender: Italienisch1987@gmail.com
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

------=_Part_2198_1422145442.1573076988100
Content-Type: multipart/alternative; 
	boundary="----=_Part_2199_1039903107.1573076988100"

------=_Part_2199_1039903107.1573076988100
Content-Type: text/plain; charset="UTF-8"


Hi Donald,
Hi The Lee-man,

Thanks for the reply. Both replies were helpful and both replies actually 
clarified my concepts. And I realized, the question was not clear....You 
were kind enough to reply in detail even when the question of was not clear 
!

*The Lee-man*, your guess was right. I was thinking something like that and 
I realized it makes no sense.

*Donald*: Yes, you are right. I took this point of yous "*then doing normal 
I/O to that iSCSI disk will provide all the traffic you will typically need*"....the 
wireshark showed me ! 

I'm a novice in Open-iSCSI yet very much interested in it. Please excuse my 
simple questions. It is written, Open-iSCSI acts as "*kernel driver*" 
between "*block layer*" and "*network layer*". Therefore following two 
questions:

- Linux block layer perform IO scheduling IO submissions to storage device 
driver. If there is a physical device, the block layer interacts with it 
through SCSI mid layer and SCSI low level drivers. So, how *actually* a 
software initiator (*Open-iSCSI*) interacts with "*block layer*"?  I will 
be really grateful if you can explain me. 

- What confuses me, where does the "*disk driver*" comes into play?

Thanks :-)


On Monday, November 4, 2019 at 5:43:24 PM UTC+1, The Lee-Man wrote:
>
> On Monday, November 4, 2019 at 2:49:08 AM UTC-8, Bobby wrote:
>>
>> Hi
>>
>> I have two virtual machines. One is a client and other is a sever (SAN). 
>> I am using Wireshark to  analyze the iSCSI protocols between them.
>>
>> Someone recommended me, in addition to a packet analyzer, I can also use 
>> a packet generator. Any good packet generator for iSCSI client/server model?
>>
>> Thanks
>>
>
> Your question is not clear, but I'm *guessing*  you are asking if you can 
> use some sort of software to inject iSCSI packets into your client/server 
> stream, e.g. so that you can simulate errors and see how your software 
> handles them?
>
> If so, then the answer is no, there is nothing I know of.
>
> Such "bad command injection" can be done with fancy hardware analyzers. A 
> good (expensive) network analyzer can (I believe) inject bad packets of any 
> type.See https://www.firewalltechnical.com/packet-injection-tools/
>
> It sound like none of this is directly related to open-iscsi, though.
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/0c2592cf-ad61-4fe4-8006-63edabe4af7f%40googlegroups.com.

------=_Part_2199_1039903107.1573076988100
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Hi Donald,<div>Hi The Lee-man,<br><br>Thanks for the r=
eply. Both replies were helpful and both replies actually clarified my conc=
epts. And I realized, the question was not clear....You were kind enough to=
 reply in detail even when the question of was not clear !</div><div><br></=
div><div><b>The Lee-man</b>, your guess was right. I was thinking something=
 like that and I realized it makes no sense.</div><div><br></div><div><b>Do=
nald</b>: Yes, you are right. I took this point of yous &quot;<b><i>then do=
ing normal I/O to that iSCSI disk will provide all the traffic you will typ=
ically need</i></b>&quot;....the wireshark showed me !=C2=A0</div><div><br>=
</div><div>I&#39;m a novice in Open-iSCSI yet very much interested in it. P=
lease excuse=C2=A0my simple questions. It is written, Open-iSCSI acts as &q=
uot;<b>kernel driver</b>&quot; between &quot;<b>block layer</b>&quot; and &=
quot;<b>network layer</b>&quot;. Therefore following=C2=A0two questions:<br=
><br>-=20

Linux block layer perform IO scheduling IO submissions to storage device dr=
iver. If there is a physical device, the block layer interacts with it thro=
ugh SCSI mid layer and SCSI low level drivers. So, how *actually* a softwar=
e initiator (<b>Open-iSCSI</b>) interacts with &quot;<b>block layer</b>&quo=
t;?=C2=A0 I will be really grateful if you can explain me.=C2=A0</div><div>=
<br>- What confuses me, where does the &quot;<b>disk driver</b>&quot; comes=
 into play?<br><br>Thanks :-)</div><br><br>On Monday, November 4, 2019 at 5=
:43:24 PM UTC+1, The Lee-Man wrote:<blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;"><div dir=3D"ltr">On Monday, November 4, 2019 at 2:49:08 AM UTC-8, Bob=
by wrote:<blockquote class=3D"gmail_quote" style=3D"margin:0;margin-left:0.=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi<div><b=
r></div><div>I have two virtual machines. One is a client and other is a se=
ver (SAN). I am using Wireshark to=C2=A0 analyze the iSCSI protocols betwee=
n them.<br></div><div><br></div><div>Someone recommended=C2=A0me, in additi=
on to a packet analyzer, I can also use a packet generator. Any good packet=
 generator for iSCSI client/server model?</div><div><br></div><div>Thanks</=
div></div></blockquote><div><br></div><div>Your question is not clear, but =
I&#39;m <i>guessing</i>=C2=A0 you are asking if you can use some sort of so=
ftware to inject iSCSI packets into your client/server stream, e.g. so that=
 you can simulate errors and see how your software handles them?</div><div>=
<br></div><div>If so, then the answer is no, there is nothing I know of.</d=
iv><div><br></div><div>Such &quot;bad command injection&quot; can be done w=
ith fancy hardware analyzers. A good (expensive) network analyzer can (I be=
lieve) inject bad packets of any type.See <a href=3D"https://www.firewallte=
chnical.com/packet-injection-tools/" target=3D"_blank" rel=3D"nofollow" onm=
ousedown=3D"this.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2F=
www.firewalltechnical.com%2Fpacket-injection-tools%2F\x26sa\x3dD\x26sntz\x3=
d1\x26usg\x3dAFQjCNEONHtCVR_Q4_AGXf9bkX4Y4NVSRA&#39;;return true;" onclick=
=3D"this.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fwww.fire=
walltechnical.com%2Fpacket-injection-tools%2F\x26sa\x3dD\x26sntz\x3d1\x26us=
g\x3dAFQjCNEONHtCVR_Q4_AGXf9bkX4Y4NVSRA&#39;;return true;">https://www.fire=
walltechnical.<wbr>com/packet-injection-tools/</a></div><div><br></div><div=
>It sound like none of this is directly related to open-iscsi, though.<br><=
/div></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/0c2592cf-ad61-4fe4-8006-63edabe4af7f%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/0c2592cf-ad61-4fe4-8006-63edabe4af7f%40googlegroups.com</a>.<b=
r />

------=_Part_2199_1039903107.1573076988100--

------=_Part_2198_1422145442.1573076988100--
