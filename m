Return-Path: <open-iscsi+bncBC755V5RXMKBBGXA5X3QKGQET6W7UTQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB6120FA15
	for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 19:02:20 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id w27sf15105244qkw.2
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 10:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=b0iX0XSIob2L3D2YDlUCD4Rm9dsaoOBqHNjQ95wOCOM=;
        b=lWGAPabHEdHpD53zf0IzOzqKC6DPjp3H1w09idn+OiVQS8AKaxCKEaCvk9sXNWqOCV
         a+Ym1ex124yOri9m8iycNJCq972/Jje1uegUKhWmjiPX1VF/JaqLF8j5yma5P6yP4KyI
         +voKN/Gp0IxuMGKSUU/jrOQKMfxy3ERa4elC9H24YpxDQvsu3A2yj9C9JbycNJXbTwag
         xLEPXH30KyAeZ/u5ThBlEVuboBGCSxtUVhBG8fUjOnfXA82Qz1FCh1KMQOAmamoY8uQK
         DozpfpsKfdh7Kwnb3Mj/kTkot0tV7zmj1l2xcU5otcrdPVmLwbgK9DQ3X32On69FzXTC
         4Z+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b0iX0XSIob2L3D2YDlUCD4Rm9dsaoOBqHNjQ95wOCOM=;
        b=Xc4dT4PQQWkxJbzCLXlzN2QfyfafLG1WXXoHiQqLdNN2mZO8P7oMXwtjP3SqDnkMtP
         YFsXhDy4eYHlHCOr/DrbajBBB3/e0yzc6NQTYBYsuBo0nGpFAth9IRP9xCHP5NhQAGnz
         fszftkCv56ErCIoDvgMZdRweuEiORWeGFZ1XPKxdcXUfmX2cRpcK8F3IvJml4AcqJiny
         cYwiRLfQq1xoaJTP+GQwTYEeCAwvgmkCZ5wLCalFTJCDSPTxcG3A90AC9NlSoUK15bIq
         Jzdek2dj3cdGqmyYWEOc/7JOlsQO+oQHm1zTAif9y/2+/IKFTGioQejXGFGHHV1bDtPO
         qjSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b0iX0XSIob2L3D2YDlUCD4Rm9dsaoOBqHNjQ95wOCOM=;
        b=tFFEUp+gKLDf3fiUCDPfByz0cNStcV5PFuCOZBwTNxihLePcweEd5misoX2Bc5kUNh
         /ccs5e7+oDfoaFf5Sck9LH/TDgP3Q2hgL6jSZbre71N7Yy6LaKaGVooOAS75rsryUhzr
         a/OJEUVsOezbcDSNgKSWgNyAFMMeVgV4y1LwbkXPgVvrXQz9phus809ioqIfKwZv1Xe5
         4oNslE/BT5IzOrBHKQfBmd8sG06W2Y74DE5BJKr1OLz9SvvweRVqANbQ0KUrRGe0TD7r
         oqm5WH1Irco2gJPZuGTLBPzntUAbo5Xbz0P5Tt5wS1axEC4l7+N+boBPak2uVoKhNRaq
         pNRw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532vQGTegFBB1t09hg84wxsh4dhrX1XIHbib5X4JLO+QneiLS8xJ
	9/+0YWSjPEB6nS+0QrCJ9BY=
X-Google-Smtp-Source: ABdhPJw+cuXJEaltfzpnoaaFjbL+fBhaaIJtbDYCgAbjj2Dnz5P2rWQJ60isdpGNvlPOiT6LWYLCaA==
X-Received: by 2002:a05:6214:18ec:: with SMTP id ep12mr21343561qvb.128.1593536539001;
        Tue, 30 Jun 2020 10:02:19 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:d01:: with SMTP id 1ls10107171qkn.0.gmail; Tue, 30 Jun
 2020 10:02:16 -0700 (PDT)
X-Received: by 2002:a05:620a:15f4:: with SMTP id p20mr15122040qkm.377.1593536536380;
        Tue, 30 Jun 2020 10:02:16 -0700 (PDT)
Date: Tue, 30 Jun 2020 10:02:15 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco@googlegroups.com>
In-Reply-To: <CAK3e-EYtSezXByd_YavtAVGMk9S_i7==eAYSABLxeSn9h+tE5w@mail.gmail.com>
References: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
 <CAK3e-EYtSezXByd_YavtAVGMk9S_i7==eAYSABLxeSn9h+tE5w@mail.gmail.com>
Subject: Re: Concurrent logins to different interfaces of same iscsi target
 and login timeout
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_186_1986707915.1593536535827"
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

------=_Part_186_1986707915.1593536535827
Content-Type: multipart/alternative; 
	boundary="----=_Part_187_629460739.1593536535827"

------=_Part_187_629460739.1593536535827
Content-Type: text/plain; charset="UTF-8"

On Tuesday, June 30, 2020 at 8:55:13 AM UTC-7, Donald Williams wrote:
>
> Hello,
>  
>  Assuming that devmapper is running and MPIO properly configured you want 
> to connect to the same volume/target from different interfaces. 
>
> However in your case you aren't specifying the same interface. "default"  
> but they are on the same subnet.  Which typically will only use the default 
> NIC for that subnet. 
>

Yes, generally best practices require that each component of your two paths 
between initiator and target are redundant. This means that, in the case of 
networking, you want to be on different subnets, served by different 
switches. You also want two different NICs on your initiator, if possible, 
although many times they are on the same card. But, obviously, some points 
are not redundant (like your initiator or target). 

>
> What iSCSI target are you using?  
>
>  Regards,
> Don
>
> On Tue, Jun 30, 2020 at 9:00 AM Amit Bawer <abawer@redhat.com> wrote:
>
>> [Sorry if this message is duplicated, haven't seen it is published in the 
>> group]
>>
>> Hi,
>>
>> Have couple of question regarding iscsiadm version 6.2.0.878-2:
>>
>> 1) Is it safe to have concurrent logins to the same target from different 
>> interfaces? 
>> That is, running the following commands in parallel:
>>
>> iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p 
>> 10.35.18.121:3260,1 -l
>> iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p 
>> 10.35.18.166:3260,1 -l
>>
>> 2) Is there a particular reason for the default values of  
>> node.conn[0].timeo.login_timeout and node.session.initial_login_
>> retry_max?
>> According to comment in iscsid.conf it would spend 120 seconds in case of 
>> an unreachable interface login:
>>
>> # The default node.session.initial_login_retry_max is 8 and
>> # node.conn[0].timeo.login_timeout is 15 so we have:
>> #
>> # node.conn[0].timeo.login_timeout * node.session.initial_login_retry_max 
>> =
>> #                                                               120 
>> seconds
>>
>>
>> Thanks,
>> Amit
>>
>> -- 
>> You received this message because you are subscribed to the Google Groups 
>> "open-iscsi" group.
>> To unsubscribe from this group and stop receiving emails from it, send an 
>> email to open-iscsi+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit 
>> https://groups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.com 
>> <https://groups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.com?utm_medium=email&utm_source=footer>
>> .
>>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco%40googlegroups.com.

------=_Part_187_629460739.1593536535827
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tuesday, June 30, 2020 at 8:55:13 AM UTC-7, Donald Will=
iams wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left=
: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr">He=
llo,<div>=C2=A0</div><div>=C2=A0Assuming that devmapper is running and MPIO=
 properly configured you want to connect to the same volume/target from dif=
ferent interfaces.=C2=A0</div><div><br></div><div>However in your case you =
aren&#39;t specifying=C2=A0the same interface. &quot;default&quot;=C2=A0 bu=
t they are on the same subnet.=C2=A0 Which typically will only use the defa=
ult NIC for that subnet.=C2=A0</div></div></blockquote><div><br></div><div>=
Yes, generally best practices require that each component of your two paths=
 between initiator and target are redundant. This means that, in the case o=
f networking, you want to be on different subnets, served by different swit=
ches. You also want two different NICs on your initiator, if possible, alth=
ough many times they are on the same card. But, obviously, some points are =
not redundant (like your initiator or target). <br></div><blockquote class=
=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #cc=
c solid;padding-left: 1ex;"><div dir=3D"ltr"><div><br></div><div>What iSCSI=
 target are you using?=C2=A0=C2=A0</div><div><br></div><div>=C2=A0Regards,<=
/div><div>Don</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On=
 Tue, Jun 30, 2020 at 9:00 AM Amit Bawer &lt;<a href=3D"mailto:abawer@redha=
t.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;m=
ailto:abawer@redhat.com&#39;;return true;" onclick=3D"this.href=3D&#39;mail=
to:abawer@redhat.com&#39;;return true;">abawer@redhat.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div><span></=
span></div></div><span><span><span><span><span><span><span><span><div><span=
>[Sorry if this message is duplicated, haven&#39;t seen it is published in =
the group]</span></div><div><span><br><span dir=3D"ltr"></span> </span></di=
v></span></span></span></span></span></span></span></span><span><span><span=
><span><span><span><span><span><div><span></span></div></span></span></span=
></span></span></span></span></span><div><div><div><div dir=3D"ltr"><div>Hi=
,</div><div><br></div><div>Have couple of question regarding iscsiadm versi=
on 6.2.0.878-2:</div><div><br></div><div>1) Is it safe to have concurrent l=
ogins to the same target from different interfaces? <br></div><div>That is,=
 running the following commands in parallel:</div><div><br></div><div>iscsi=
adm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p <a href=3D"http=
://10.35.18.121:3260" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"thi=
s.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F10.35.18.121%3A32=
60\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNFENEW7otxzeQjvih9zMYbzn1UvmQ&#39=
;;return true;" onclick=3D"this.href=3D&#39;http://www.google.com/url?q\x3d=
http%3A%2F%2F10.35.18.121%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNFE=
NEW7otxzeQjvih9zMYbzn1UvmQ&#39;;return true;">10.35.18.121:3260</a>,1 -l</d=
iv><div>iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p <a=
 href=3D"http://10.35.18.166:3260" target=3D"_blank" rel=3D"nofollow" onmou=
sedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F10.3=
5.18.166%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNHRd99mosO-k4Tcjrwlt=
5enLgHYzA&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.google.=
com/url?q\x3dhttp%3A%2F%2F10.35.18.166%3A3260\x26sa\x3dD\x26sntz\x3d1\x26us=
g\x3dAFQjCNHRd99mosO-k4Tcjrwlt5enLgHYzA&#39;;return true;">10.35.18.166:326=
0</a>,1 -l</div><div><br></div><div>2) Is there a particular reason for the=
 default values of=C2=A0 node.conn[0].timeo.login_<span></span>timeo<wbr>ut=
 and node.session.initial_login_<span></span>ret<wbr>ry_max?</div><div>Acco=
rding to comment in iscsid.conf it would spend 120 seconds in case of an un=
reachable interface login:</div><div><br></div><div># The default node.sess=
ion.initial_login_<span></span>ret<wbr>ry_max is 8 and<br># node.conn[0].ti=
meo.login_<span></span>timeo<wbr>ut is 15 so we have:<br>#<br># node.conn[0=
].timeo.login_<span></span>timeo<wbr>ut * node.session.initial_login_<span>=
</span>ret<wbr>ry_max =3D<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 120 seconds<br></div><div><br></div><div><br></=
div><div>Thanks,</div><div> Amit</div></div></div></div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:open-is=
csi+unsubscribe@googlegroups.com&#39;;return true;" onclick=3D"this.href=3D=
&#39;mailto:open-iscsi+unsubscribe@googlegroups.com&#39;;return true;">open=
-iscsi+unsubscribe@<wbr>googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.=
com?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank" rel=3D"no=
follow" onmousedown=3D"this.href=3D&#39;https://groups.google.com/d/msgid/o=
pen-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.com?utm_medi=
um\x3demail\x26utm_source\x3dfooter&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6=
f-93e8da1e19bbn%40googlegroups.com?utm_medium\x3demail\x26utm_source\x3dfoo=
ter&#39;;return true;">https://groups.google.com/d/<wbr>msgid/open-iscsi/cc=
3ad021-<wbr>753a-4ac4-9e6f-93e8da1e19bbn%<wbr>40googlegroups.com</a>.<br>
</blockquote></div>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco%40googlegroups.com</a>.=
<br />

------=_Part_187_629460739.1593536535827--

------=_Part_186_1986707915.1593536535827--
