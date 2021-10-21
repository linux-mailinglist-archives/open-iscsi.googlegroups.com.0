Return-Path: <open-iscsi+bncBC755V5RXMKBBX4ZY2FQMGQERPDN2LQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A47504366D5
	for <lists+open-iscsi@lfdr.de>; Thu, 21 Oct 2021 17:53:04 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id eb20-20020ad44e54000000b00384961955a3sf1295337qvb.17
        for <lists+open-iscsi@lfdr.de>; Thu, 21 Oct 2021 08:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ubttfovwsHg0MzfmvXvrX3vDrMwM9YOInv//W+Iz+58=;
        b=YSQpaA+uRP8EHn8Zr2odiN7d+w0qB5Pi2XHhL81x9te95LHF2xIE66AZmWYP7hQuR9
         iQ5+Pi279J874TJ1jgQkZWqVqQtgOOL/nT3VtbF+KPyl2l0PjLgZ8JNPyv19eoNp9Ydu
         VHWGtAixI45q7PxyrsTPgN3CGSPvN2JMqC4G2j37vmyYh6peKP3RPscBUG2c/uSLw5lu
         rRh0jUbDlpP+Gv/k4YLbTSSDsI7I9O+Gub0eFQ8bETnXZA47G37qyL6+ydJLWTfEClgQ
         vMeWYyuk+nXX5m36z26QDhnxpsf1QEDbsOWYHvLxXnjCCI4QAitJB+3SZ052RKGROaam
         Qs2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ubttfovwsHg0MzfmvXvrX3vDrMwM9YOInv//W+Iz+58=;
        b=GeACxsYg5xJnw5mYd7/hHaEKCbdoj9jgHFDmwBtVFj02awNz6oEgQtQgIR8t3zywzO
         DTMeSND4ZjMCvgSw5IATtHjMRjZomKj0WIlvDoAt2og8cVr6G3KzwUVS8kN8ScLLv3Yx
         P3a98637RPBtRb/wRS+G2yBdjf3Lqd2eRj0XOyOe8bK4AnFGyIVtjmgzKKxieWHe2zR5
         w/Iyx9z5v/q7WgyD0IKWFzUjobFjpNO8zGAuCQwanZtbBRN+pdNsKFSJQTnZlWHC+gpp
         WyF9hGh8Xwx+rbzSQKSEz6vIvvM3FIATkn1PgUJ5CbejveAsU3ZOcedGX230b+zwTsAq
         LLlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ubttfovwsHg0MzfmvXvrX3vDrMwM9YOInv//W+Iz+58=;
        b=7Qi+WPTD7gh7xuf0v8UmJ6nJXtu6jgM/ZG9PxEpzyWhJUZLLgJ1+Wdft8BfT7I1hyJ
         XGTJnQtTh4+hlK3xTsmkAbQm0MRVqBNJr0EK4evfinWcemg8Wgkfnkd5OAhvdJcRVYJi
         F43HetrjZ/8kpB352PcceYAgSnEku4IOGFkyYC72yKTIsk572Isw8nC5rRnGtsOGezjA
         76JwateRIx7d6NARQJc/PZ+BYPRk0zIxAOMjqztjzB7tsLnhM0xcQrHKDlmF0uJj/O2Q
         nDetLgnXs2eyHvSpeBpdFJJsq51MCl+n5SyYpZOYRwCgDM8qbyF+eQC+uvpXDo2IHj7Z
         CMEA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530XMJLmZxdaz+d2QeJv8HisU/Q8+I6OOJLZvsG5YLvDOTnMb9zy
	+MQR2FV9FyQfVNfgkqUtdXE=
X-Google-Smtp-Source: ABdhPJxZmou/IUeHmXR75MnegFe/R/4oR8ieJHbl0v6YjpGjlrekgbZeLUvAIlx9o6Z7RVfXn3WpDw==
X-Received: by 2002:ac8:11:: with SMTP id a17mr6767709qtg.276.1634831583396;
        Thu, 21 Oct 2021 08:53:03 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:ef45:: with SMTP id d66ls3124729qkg.5.gmail; Thu, 21 Oct
 2021 08:53:02 -0700 (PDT)
X-Received: by 2002:a37:9ec7:: with SMTP id h190mr5110268qke.105.1634831582687;
        Thu, 21 Oct 2021 08:53:02 -0700 (PDT)
Date: Thu, 21 Oct 2021 08:53:02 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <9b1f3139-8efe-4b1d-aa07-b623c212c9fbn@googlegroups.com>
In-Reply-To: <61710666020000A100044B4B@gwsmtp.uni-regensburg.de>
References: <4882593.9CP3fYhb5E@localhost.localdomain>
 <61710666020000A100044B4B@gwsmtp.uni-regensburg.de>
Subject: Re: [EXT] Concurrent usage of iscsiadm
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_8216_261827446.1634831582006"
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

------=_Part_8216_261827446.1634831582006
Content-Type: multipart/alternative; 
	boundary="----=_Part_8217_719198716.1634831582006"

------=_Part_8217_719198716.1634831582006
Content-Type: text/plain; charset="UTF-8"

Hi Vojtech:

I know there's confusion around this issue, and as some testing at RH has 
shown, you can get away with using iscsiadm in parallel, as long as you're 
careful about what you do. For example, if each instance is trying to log 
into a different target, and there is no error handling occurring, testing 
seems to show this to be fine.

But I continue to recommend against doing this, because (as I've said 
before) there isn't sufficient locking in iscsiadm to allow completely 
parallel execution. [By the way, I'm willing to entertain patches that fix 
that.]

Yes, some of the code in iscsiadm is safe for parallel execution, such as 
talking the iscsid and accessing the node database. But much is not, such 
as error handling and sysfs access.

And there is very little reason to try to login into multiple targets using 
parallel calls to iscsiadm when iscsiadm now how the "no-wait" option, 
allowing it to send off login requests without waiting for success or 
timing out and failing.

Bottom line, I'd say using iscsiadm in parallel at your own risk. And if 
you do so and find issues, then we can try to address them. But the last 
thing I want for iscsiadm is one giant lock. And locking individual pieces 
of iscsiadm can lead to deadlock situations, if not sequenced correctly.

I hope that answers your questions.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/9b1f3139-8efe-4b1d-aa07-b623c212c9fbn%40googlegroups.com.

------=_Part_8217_719198716.1634831582006
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Vojtech:<div><br></div><div>I know there's confusion around this issue, =
and as some testing at RH has shown, you can get away with using iscsiadm i=
n parallel, as long as you're careful about what you do. For example, if ea=
ch instance is trying to log into a different target, and there is no error=
 handling occurring, testing seems to show this to be fine.</div><div><br><=
/div><div>But I continue to recommend against doing this, because (as I've =
said before) there isn't sufficient locking in iscsiadm to allow completely=
 parallel execution. [By the way, I'm willing to entertain patches that fix=
 that.]</div><div><br></div><div>Yes, some of the code in iscsiadm is safe =
for parallel execution, such as talking the iscsid and accessing the node d=
atabase. But much is not, such as error handling and sysfs access.</div><di=
v><br></div><div>And there is very little reason to try to login into multi=
ple targets using parallel calls to iscsiadm when iscsiadm now how the "no-=
wait" option, allowing it to send off login requests without waiting for su=
ccess or timing out and failing.</div><div><br></div><div>Bottom line, I'd =
say using iscsiadm in parallel at your own risk. And if you do so and find =
issues, then we can try to address them. But the last thing I want for iscs=
iadm is one giant lock. And locking individual pieces of iscsiadm can lead =
to deadlock situations, if not sequenced correctly.</div><div><br></div><di=
v>I hope that answers your questions.<br><br></div><div class=3D"gmail_quot=
e"><div dir=3D"auto" class=3D"gmail_attr">On Wednesday, October 20, 2021 at=
 11:19:24 PM UTC-7 Uli wrote:<br/></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); pad=
ding-left: 1ex;">Hi!
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
7551485000&amp;usg=3DAFQjCNFWd8xkSAvajGv6uTNd8d0GPcg1Tg">https://groups.goo=
gle.com/g/open-iscsi/c/OHOdIm1W274/m/9l5NcPQHBAAJ</a>=20
<br>&gt; [2] <a href=3D"https://bugzilla.redhat.com/show_bug.cgi?id=3D17871=
92#c18" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://=
www.google.com/url?hl=3Den&amp;q=3Dhttps://bugzilla.redhat.com/show_bug.cgi=
?id%3D1787192%23c18&amp;source=3Dgmail&amp;ust=3D1634917551486000&amp;usg=
=3DAFQjCNFD9j9ad03MjJM-0CwP1Tq1k2QrLw">https://bugzilla.redhat.com/show_bug=
.cgi?id=3D1787192#c18</a>=20
<br>&gt; [3] <a href=3D"https://www.ovirt.org/" target=3D"_blank" rel=3D"no=
follow" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3D=
https://www.ovirt.org/&amp;source=3Dgmail&amp;ust=3D1634917551486000&amp;us=
g=3DAFQjCNGuZTQiD2iyaZriUIKaNAq6ZBPrdA">https://www.ovirt.org/</a>=20
<br>&gt; [4] <a href=3D"https://github.com/oVirt/vdsm/blob/master/tests/sto=
rage/stress/" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"ht=
tps://www.google.com/url?hl=3Den&amp;q=3Dhttps://github.com/oVirt/vdsm/blob=
/master/tests/storage/stress/&amp;source=3Dgmail&amp;ust=3D1634917551486000=
&amp;usg=3DAFQjCNHLOk-aTZ1PxAxpFR38EkD1PFH8oA">https://github.com/oVirt/vds=
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
amp;ust=3D1634917551486000&amp;usg=3DAFQjCNFDKsVonVJxe8Udy5iIRwqNk2ohdQ">ht=
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
om/d/msgid/open-iscsi/9b1f3139-8efe-4b1d-aa07-b623c212c9fbn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/9b1f3139-8efe-4b1d-aa07-b623c212c9fbn%40googlegroups.com</a>.=
<br />

------=_Part_8217_719198716.1634831582006--

------=_Part_8216_261827446.1634831582006--
