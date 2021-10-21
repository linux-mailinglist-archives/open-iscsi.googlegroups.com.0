Return-Path: <open-iscsi+bncBC755V5RXMKBB6U2Y2FQMGQEK5SJQLI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D5C4366E3
	for <lists+open-iscsi@lfdr.de>; Thu, 21 Oct 2021 17:55:39 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id el19-20020ad459d3000000b00384a5ef8979sf1299550qvb.18
        for <lists+open-iscsi@lfdr.de>; Thu, 21 Oct 2021 08:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1Jw0us45FMLfIJHmh4ZU+h3JGwenFzl3rdWk/DIdQKA=;
        b=eOLE/8s1BVZn9LXU6fRzElATcJwRzImQZwGygUqCqhbtn/UDXpNKyXaqoSz1SyLGOX
         wKMKkXfKrbTYz5bFT/3j/dQiRcVM6sZJb0bAQIiLGHPjyni4rMIFPqqQZYhxZw8CzU6S
         SQ4Oe2OBT3poegc2v6xfZqXB1frkCY+PPt6mbHZkDrYLdECCl5dXUXHp006YyPja+DS3
         KWxcDuiW2iC0rKGLevCDI2maoxq7FyMETbBsZrHsebVOiWM2TTBmzCHRS/FJ3xwUrH2F
         sJ3HNqpf8tHpzCZzmlIuLezpXRgPlLzor5gEci4Qw/oEMD7prxmmGV5KDbmSAjkXBi96
         bHcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1Jw0us45FMLfIJHmh4ZU+h3JGwenFzl3rdWk/DIdQKA=;
        b=QTa5OFlpmheMMMRT2PwoywnGvasuyLeE48ZmNckFS5FAcNiInzaSVp6FCUERiQivO0
         qQ2TrX0eaVFSVukVolIrXxnAzWq1cnTUJiljqEYQwSn83q3Ce+IlTXH8uNEmVtTAuuQP
         dVg5hma7sm2FPaTEGG6/sYdxM3+udXqdgmqyW2XTIxZPVHM/Z5wyQ6jl2WkMDoPIppr0
         4zC8rRfe52E5oQhIDlyvMnU+bGMEQLWb9u8dxB3qsHlX2gRH4Ch/gBY7x8RsBHtbJiNW
         v2deGbvfGZmrwJ+/DqzM3ERfkH40+Y4Eu6v7xTSrGBr8njevBjcBQsNitFZpjg9HGQby
         TUGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1Jw0us45FMLfIJHmh4ZU+h3JGwenFzl3rdWk/DIdQKA=;
        b=uNizF6unCcYl9De5nVtrs++N1gHZWC7WZwFkaLb3KpoXYbo2ru2HM67sS5sR1aikH6
         +S/DRiDVAnA9w5/STE7ey/HEiirSkl+P/fNwSMD0ISfuetf75MQi1Qab6aDoCpztOjuH
         hcaGGcKQo6UKWpvIlh1WpwUNd8IgFjJyIFNPj6NDs0OxkfePOny/fiVs8eCiOSbptxzm
         L7Uid4DDqMhsghAuYKnUFUYAH6v/Ga317Tj4x7X0h6s711dwpcFwq1BaRQBw4+fD2H3c
         3LY9lhANUKllvS1s8hj49j4wjo/VyvdaFmKSfDjB+ueBgH2exlS7fA2/vP2GITzq40Sf
         tSWw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531r0IuRy9YFG912wrLuZhxayoHfJeH/M0wsoIOH1g/PdutW22kj
	jedJjLArCgQ7nNPsgcq46ms=
X-Google-Smtp-Source: ABdhPJzE0aUseUr2/UjP6ptOFXYkz5NlgXZPK+pi/ob3yQ99hPjEbnZNjB3+I6LQ7Rf86qgmUzFIHw==
X-Received: by 2002:a37:b481:: with SMTP id d123mr4973204qkf.514.1634831738273;
        Thu, 21 Oct 2021 08:55:38 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:5a0f:: with SMTP id n15ls3256883qta.1.gmail; Thu, 21 Oct
 2021 08:55:37 -0700 (PDT)
X-Received: by 2002:a05:622a:38b:: with SMTP id j11mr6981634qtx.389.1634831737731;
        Thu, 21 Oct 2021 08:55:37 -0700 (PDT)
Date: Thu, 21 Oct 2021 08:55:37 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <8d711f1e-d3f4-4109-87ed-a950e9329895n@googlegroups.com>
In-Reply-To: <61710666020000A100044B4B@gwsmtp.uni-regensburg.de>
References: <4882593.9CP3fYhb5E@localhost.localdomain>
 <61710666020000A100044B4B@gwsmtp.uni-regensburg.de>
Subject: Re: [EXT] Concurrent usage of iscsiadm
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_19138_508633666.1634831737129"
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

------=_Part_19138_508633666.1634831737129
Content-Type: multipart/alternative; 
	boundary="----=_Part_19139_1300330979.1634831737129"

------=_Part_19139_1300330979.1634831737129
Content-Type: text/plain; charset="UTF-8"

Hi Ulrich:

I don't see how systemd is going to run parallel iscsiadm commands, at 
least with the units that come with open-iscsi. Systemd actually guards 
against that.

As far as locking, I'd be glad to entertain/discuss/review patches that 
make iscsiadm behave well when run in parallel. But such as change isn't on 
my short list of things to work on, since I don't really see the need. I'd 
rather focus on making iscsid play well in containers.

On Wednesday, October 20, 2021 at 11:19:24 PM UTC-7 Uli wrote:

> Hi!
>
> Another thing is: Whether you like systemd or not: It runs many processes 
> automatically and concurrently.
> So it seems wise that iscasadm may be run concurrently. If there are 
> issues, iscsiadm should use a MUTEX internally to avoid those IMHO
>
> Regards,
> Ulrich
> >>> Vojtech Juranek <vjur...@redhat.com> schrieb am 20.10.2021 um 08:58 in
> Nachricht <4882593.9...@localhost.localdomain>:
> > Hi,
> > I'd like to follow up with discussion about concurrent usage iscsiadm 
> tool. 
> > It 
> > was discussed here about year ago, with suggestion not to use it 
> > concurrently 
> > [1]. On the other hand, comment [2] says it should be fine. Is the an 
> > agreement 
> > in open-iscsi community if the concurrent usage of iscsiadm is safe or 
> not? 
> > If 
> > it's not safe, is there any bug for open-iscsi describing the issue and 
> > potential problems if iscsiadm is used concurrently?
> > 
> > The motivation why I'm popping up this again is that in oVirt project 
> [3] we 
> > 
> > use a lock before calling iscsiadm to make sure it's not run in 
> parallel. 
> > This 
> > causes us various issues (see e.g. BZ #1787192 [2]) and we'd like to get 
> rid 
> > 
> > off this lock.
> > 
> > I run several thousands tests with our typical usage of iscsiadm [4], 
> > running 
> > iscsiadm in parallel and haven't spot any issue so far. This suggests 
> > removing 
> > the lock can be safe, but of course my tests could be just a pure luck. 
> So 
> > before removing this lock from our code base, I'd like to know your 
> thoughts 
> > 
> > about it.
> > 
> > Thanks
> > Vojta
> > 
> > [1] https://groups.google.com/g/open-iscsi/c/OHOdIm1W274/m/9l5NcPQHBAAJ 
> > [2] https://bugzilla.redhat.com/show_bug.cgi?id=1787192#c18 
> > [3] https://www.ovirt.org/ 
> > [4] https://github.com/oVirt/vdsm/blob/master/tests/storage/stress/ 
> > initiator.py
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups 
> > "open-iscsi" group.
> > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > email to open-iscsi+...@googlegroups.com.
> > To view this discussion on the web visit 
> > 
> https://groups.google.com/d/msgid/open-iscsi/4882593.9CP3fYhb5E%40localhost.l 
> > ocaldomain.
>
>
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8d711f1e-d3f4-4109-87ed-a950e9329895n%40googlegroups.com.

------=_Part_19139_1300330979.1634831737129
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ulrich:<div><br></div><div>I don't see how systemd is going to run paral=
lel iscsiadm commands, at least with the units that come with open-iscsi. S=
ystemd actually guards against that.</div><div><br></div><div>As far as loc=
king, I'd be glad to entertain/discuss/review patches that make iscsiadm be=
have well when run in parallel. But such as change isn't on my short list o=
f things to work on, since I don't really see the need. I'd rather focus on=
 making iscsid play well in containers.<br><br></div><div class=3D"gmail_qu=
ote"><div dir=3D"auto" class=3D"gmail_attr">On Wednesday, October 20, 2021 =
at 11:19:24 PM UTC-7 Uli wrote:<br/></div><blockquote class=3D"gmail_quote"=
 style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); p=
adding-left: 1ex;">Hi!
<br>
<br>Another thing is: Whether you like systemd or not: It runs many process=
es automatically and concurrently.
<br>So it seems wise that iscasadm may be run concurrently. If there are is=
sues, iscsiadm should use a MUTEX internally to avoid those IMHO
<br>
<br>Regards,
<br>Ulrich
<br>&gt;&gt;&gt; Vojtech Juranek &lt;<a href data-email-masked rel=3D"nofol=
low">vjur...@redhat.com</a>&gt; schrieb am 20.10.2021 um 08:58 in
<br>Nachricht &lt;4882593.9...@localhost.localdomain&gt;:
<br>&gt; Hi,
<br>&gt; I&#39;d like to follow up with discussion about concurrent usage i=
scsiadm tool.=20
<br>&gt; It=20
<br>&gt; was discussed here about year ago, with suggestion not to use it=
=20
<br>&gt; concurrently=20
<br>&gt; [1]. On the other hand, comment [2] says it should be fine. Is the=
 an=20
<br>&gt; agreement=20
<br>&gt; in open-iscsi community if the concurrent usage of iscsiadm is saf=
e or not?=20
<br>&gt; If=20
<br>&gt; it&#39;s not safe, is there any bug for open-iscsi describing the =
issue and=20
<br>&gt; potential problems if iscsiadm is used concurrently?
<br>&gt;=20
<br>&gt; The motivation why I&#39;m popping up this again is that in oVirt =
project [3] we=20
<br>&gt;=20
<br>&gt; use a lock before calling iscsiadm to make sure it&#39;s not run i=
n parallel.=20
<br>&gt; This=20
<br>&gt; causes us various issues (see e.g. BZ #1787192 [2]) and we&#39;d l=
ike to get rid=20
<br>&gt;=20
<br>&gt; off this lock.
<br>&gt;=20
<br>&gt; I run several thousands tests with our typical usage of iscsiadm [=
4],=20
<br>&gt; running=20
<br>&gt; iscsiadm in parallel and haven&#39;t spot any issue so far. This s=
uggests=20
<br>&gt; removing=20
<br>&gt; the lock can be safe, but of course my tests could be just a pure =
luck. So=20
<br>&gt; before removing this lock from our code base, I&#39;d like to know=
 your thoughts=20
<br>&gt;=20
<br>&gt; about it.
<br>&gt;=20
<br>&gt; Thanks
<br>&gt; Vojta
<br>&gt;=20
<br>&gt; [1] <a href=3D"https://groups.google.com/g/open-iscsi/c/OHOdIm1W27=
4/m/9l5NcPQHBAAJ" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=
=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps://groups.google.com/g/=
open-iscsi/c/OHOdIm1W274/m/9l5NcPQHBAAJ&amp;source=3Dgmail&amp;ust=3D163491=
7983399000&amp;usg=3DAFQjCNGJk0F5HZ0l1LTscQSZcxu69_eZfA">https://groups.goo=
gle.com/g/open-iscsi/c/OHOdIm1W274/m/9l5NcPQHBAAJ</a>=20
<br>&gt; [2] <a href=3D"https://bugzilla.redhat.com/show_bug.cgi?id=3D17871=
92#c18" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://=
www.google.com/url?hl=3Den&amp;q=3Dhttps://bugzilla.redhat.com/show_bug.cgi=
?id%3D1787192%23c18&amp;source=3Dgmail&amp;ust=3D1634917983399000&amp;usg=
=3DAFQjCNHO_frHEyKLtI5Jd9RvRlxnRGfdbQ">https://bugzilla.redhat.com/show_bug=
.cgi?id=3D1787192#c18</a>=20
<br>&gt; [3] <a href=3D"https://www.ovirt.org/" target=3D"_blank" rel=3D"no=
follow" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3D=
https://www.ovirt.org/&amp;source=3Dgmail&amp;ust=3D1634917983399000&amp;us=
g=3DAFQjCNHTRR1VBZaOe6G1z3gowbYGeFrUJg">https://www.ovirt.org/</a>=20
<br>&gt; [4] <a href=3D"https://github.com/oVirt/vdsm/blob/master/tests/sto=
rage/stress/" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"ht=
tps://www.google.com/url?hl=3Den&amp;q=3Dhttps://github.com/oVirt/vdsm/blob=
/master/tests/storage/stress/&amp;source=3Dgmail&amp;ust=3D1634917983399000=
&amp;usg=3DAFQjCNEbqx6aYd2LUpqLpewbLk9xLrjM5Q">https://github.com/oVirt/vds=
m/blob/master/tests/storage/stress/</a>=20
<br>&gt; initiator.py
<br>&gt;=20
<br>&gt; --=20
<br>&gt; You received this message because you are subscribed to the Google=
 Groups=20
<br>&gt; &quot;open-iscsi&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an=20
<br>&gt; email to <a href data-email-masked rel=3D"nofollow">open-iscsi+...=
@googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit=20
<br>&gt; <a href=3D"https://groups.google.com/d/msgid/open-iscsi/4882593.9C=
P3fYhb5E%40localhost.l" target=3D"_blank" rel=3D"nofollow" data-saferedirec=
turl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps://groups.google.co=
m/d/msgid/open-iscsi/4882593.9CP3fYhb5E%2540localhost.l&amp;source=3Dgmail&=
amp;ust=3D1634917983400000&amp;usg=3DAFQjCNGVAIshNW33iXAKX1ITJenu1baR6Q">ht=
tps://groups.google.com/d/msgid/open-iscsi/4882593.9CP3fYhb5E%40localhost.l=
</a>=20
<br>&gt; ocaldomain.
<br>
<br>
<br>
<br>
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/8d711f1e-d3f4-4109-87ed-a950e9329895n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/8d711f1e-d3f4-4109-87ed-a950e9329895n%40googlegroups.com</a>.=
<br />

------=_Part_19139_1300330979.1634831737129--

------=_Part_19138_508633666.1634831737129--
