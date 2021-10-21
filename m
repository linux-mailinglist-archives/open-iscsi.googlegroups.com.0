Return-Path: <open-iscsi+bncBC755V5RXMKBBMM3Y2FQMGQEWQS5CYY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 610934366EC
	for <lists+open-iscsi@lfdr.de>; Thu, 21 Oct 2021 17:56:34 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id gi5-20020a056214248500b00382f7a7c7e6sf1281272qvb.21
        for <lists+open-iscsi@lfdr.de>; Thu, 21 Oct 2021 08:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=agj1yvVQ4L3ASLrpygIM7w4wnROh4RjXciNVyEsRMiw=;
        b=PmB+ReoDeW3+7ayYO6SM4IhhSZPqDx+H1IG9rbMJCPyLVZzQOdFAXRjjJotQvgqEs+
         2wbQFUE7Ew3BsdylGyiDaquKj/IOf0HYq+RD8L1EqOVjt/nf1qMJLVPdZIxUMHSvIzC3
         fhJbTmccy9EPEepfw+gZp0mYHcz24RR0y4sRvdNqGm/2Z19TfFETrlS4UXtRw+exXquE
         OagAiBSOtnZ72ptsNb0GwibfMRGEGWAzWaTsAlaRxjiM3AZGXAv+1NkZwugnH4TdrzwI
         jF+Os5M+e3ftuMl7QJHzzBl/3X1p8Sfuuj3aIBYncNHH9XZ4oDCHryvm47+aaITTRhU0
         /abg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=agj1yvVQ4L3ASLrpygIM7w4wnROh4RjXciNVyEsRMiw=;
        b=SrrStmfDi4aMqFFvl7mGpd3JrxCejD/Y6B8/13naWdBHxaHDIjDIan3viHZt4vMbGo
         TOBZBXj0aS3H0q+LIVt+0myx1JXzZ2YxFu7r9AodF4jEgqGfEIT3joyHf99iyFcbJKMN
         qQGOkZ91H4lbqI2GHQ29b/Pa4vPV72jU6XWGXzU9oaD/IFWIfz1Is/WKXPykoucbkECl
         3Fpmkmyr0AmMPN9Hkm0TufZBavi2wzg3C08RmCh1eB2bp4b5yzpvxRb+ENOLoJ1U02CR
         79N9rgSmK1CLEH2c0m0qpGj03y3Vjdq+GnhajsMQgx0xlzeYVq0O21mjDPwpz0y02GVS
         ANFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=agj1yvVQ4L3ASLrpygIM7w4wnROh4RjXciNVyEsRMiw=;
        b=LZFkb/GVjK36JL9WyAY6fy1lDvd/kM3eqT9c6v7NkAZQHuJdOLMGBgL8Gus4Ak6Efw
         alqmcPmmuSMOJucmMCQxpGvBBfxoJpCGwrZVGYRsA7u0vI3+ca6pG8UBapGbS1wXycK3
         g3QAalWg7RVEMjGbrYYXKWdbSqkkzzyd7ugzDVlZ0CwVgkAQ/ygrGAk7gni8EBo0w7R/
         RHpEcq+Sjxd/7knpu6xhdGGonjbinltEwLwnKGhD2RAB/TyRufBrE4/iPnwqvTvvhlCS
         mvpBOVPG6uu2ClDszhllePHgGtjMpJlVgz0jQFLaMCeEveMKYKZRiGzxM3mQgp3K2uPm
         cYPA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531cjTPYPNPdbcFPGRmpxBx0WpxBVFwPTaN1/eh6kJ3cFT3xvO3v
	aQNFEXfziN64anE/0F/QwGM=
X-Google-Smtp-Source: ABdhPJxLZFmopBp7aCGWLTj4qKWtoSxJTTEZ5VMOkhoGAnsVk26ZubE4PvABuVGAoDmEHy9MfypBrQ==
X-Received: by 2002:a05:620a:4146:: with SMTP id k6mr5334885qko.494.1634831793454;
        Thu, 21 Oct 2021 08:56:33 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:444c:: with SMTP id r73ls3119111qka.10.gmail; Thu, 21
 Oct 2021 08:56:33 -0700 (PDT)
X-Received: by 2002:a37:aa0f:: with SMTP id t15mr4851901qke.427.1634831792847;
        Thu, 21 Oct 2021 08:56:32 -0700 (PDT)
Date: Thu, 21 Oct 2021 08:56:32 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <ac5b23db-ce21-45ef-a0b1-56eb4f049bc3n@googlegroups.com>
In-Reply-To: <4882593.9CP3fYhb5E@localhost.localdomain>
References: <4882593.9CP3fYhb5E@localhost.localdomain>
Subject: Re: Concurrent usage of iscsiadm
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_11380_1676655432.1634831792338"
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

------=_Part_11380_1676655432.1634831792338
Content-Type: multipart/alternative; 
	boundary="----=_Part_11381_2123454918.1634831792338"

------=_Part_11381_2123454918.1634831792338
Content-Type: text/plain; charset="UTF-8"

P.S. Perhaps Chris will chime in with his opinion, which may be a bit 
different than mine on this subject. Chris?

On Wednesday, October 20, 2021 at 7:18:47 AM UTC-7 Vojtech Juranek wrote:

> Hi,
> I'd like to follow up with discussion about concurrent usage iscsiadm 
> tool. It 
> was discussed here about year ago, with suggestion not to use it 
> concurrently 
> [1]. On the other hand, comment [2] says it should be fine. Is the an 
> agreement 
> in open-iscsi community if the concurrent usage of iscsiadm is safe or 
> not? If 
> it's not safe, is there any bug for open-iscsi describing the issue and 
> potential problems if iscsiadm is used concurrently?
>
> The motivation why I'm popping up this again is that in oVirt project [3] 
> we 
> use a lock before calling iscsiadm to make sure it's not run in parallel. 
> This 
> causes us various issues (see e.g. BZ #1787192 [2]) and we'd like to get 
> rid 
> off this lock.
>
> I run several thousands tests with our typical usage of iscsiadm [4], 
> running 
> iscsiadm in parallel and haven't spot any issue so far. This suggests 
> removing 
> the lock can be safe, but of course my tests could be just a pure luck. So 
> before removing this lock from our code base, I'd like to know your 
> thoughts 
> about it.
>
> Thanks
> Vojta
>
> [1] https://groups.google.com/g/open-iscsi/c/OHOdIm1W274/m/9l5NcPQHBAAJ
> [2] https://bugzilla.redhat.com/show_bug.cgi?id=1787192#c18
> [3] https://www.ovirt.org/
> [4] https://github.com/oVirt/vdsm/blob/master/tests/storage/stress/
> initiator.py

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ac5b23db-ce21-45ef-a0b1-56eb4f049bc3n%40googlegroups.com.

------=_Part_11381_2123454918.1634831792338
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

P.S. Perhaps Chris will chime in with his opinion, which may be a bit diffe=
rent than mine on this subject. Chris?<br><br><div class=3D"gmail_quote"><d=
iv dir=3D"auto" class=3D"gmail_attr">On Wednesday, October 20, 2021 at 7:18=
:47 AM UTC-7 Vojtech Juranek wrote:<br/></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204=
); padding-left: 1ex;">Hi,
<br>I&#39;d like to follow up with discussion about concurrent usage iscsia=
dm tool. It=20
<br>was discussed here about year ago, with suggestion not to use it concur=
rently=20
<br>[1]. On the other hand, comment [2] says it should be fine. Is the an a=
greement=20
<br>in open-iscsi community if the concurrent usage of iscsiadm is safe or =
not? If=20
<br>it&#39;s not safe, is there any bug for open-iscsi describing the issue=
 and=20
<br>potential problems if iscsiadm is used concurrently?
<br>
<br>The motivation why I&#39;m popping up this again is that in oVirt proje=
ct [3] we=20
<br>use a lock before calling iscsiadm to make sure it&#39;s not run in par=
allel. This=20
<br>causes us various issues (see e.g. BZ #1787192 [2]) and we&#39;d like t=
o get rid=20
<br>off this lock.
<br>
<br>I run several thousands tests with our typical usage of iscsiadm [4], r=
unning=20
<br>iscsiadm in parallel and haven&#39;t spot any issue so far. This sugges=
ts removing=20
<br>the lock can be safe, but of course my tests could be just a pure luck.=
 So=20
<br>before removing this lock from our code base, I&#39;d like to know your=
 thoughts=20
<br>about it.
<br>
<br>Thanks
<br>Vojta
<br>
<br>[1] <a href=3D"https://groups.google.com/g/open-iscsi/c/OHOdIm1W274/m/9=
l5NcPQHBAAJ" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"htt=
ps://www.google.com/url?hl=3Den&amp;q=3Dhttps://groups.google.com/g/open-is=
csi/c/OHOdIm1W274/m/9l5NcPQHBAAJ&amp;source=3Dgmail&amp;ust=3D1634918138325=
000&amp;usg=3DAFQjCNFA7dRKLk_6x9XL-rSj5djgvN8vbA">https://groups.google.com=
/g/open-iscsi/c/OHOdIm1W274/m/9l5NcPQHBAAJ</a>
<br>[2] <a href=3D"https://bugzilla.redhat.com/show_bug.cgi?id=3D1787192#c1=
8" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.g=
oogle.com/url?hl=3Den&amp;q=3Dhttps://bugzilla.redhat.com/show_bug.cgi?id%3=
D1787192%23c18&amp;source=3Dgmail&amp;ust=3D1634918138325000&amp;usg=3DAFQj=
CNGUqldpzWFvqXLdau16onYc8Gn9fA">https://bugzilla.redhat.com/show_bug.cgi?id=
=3D1787192#c18</a>
<br>[3] <a href=3D"https://www.ovirt.org/" target=3D"_blank" rel=3D"nofollo=
w" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps=
://www.ovirt.org/&amp;source=3Dgmail&amp;ust=3D1634918138325000&amp;usg=3DA=
FQjCNF8Aa_9LxNY02UomDoxWrCHyEtRWg">https://www.ovirt.org/</a>
<br>[4] <a href=3D"https://github.com/oVirt/vdsm/blob/master/tests/storage/=
stress/" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https:/=
/www.google.com/url?hl=3Den&amp;q=3Dhttps://github.com/oVirt/vdsm/blob/mast=
er/tests/storage/stress/&amp;source=3Dgmail&amp;ust=3D1634918138325000&amp;=
usg=3DAFQjCNE9f1CVfVo-5lMjcr_CBfLBqu64QQ">https://github.com/oVirt/vdsm/blo=
b/master/tests/storage/stress/</a>
<br>initiator.py</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/ac5b23db-ce21-45ef-a0b1-56eb4f049bc3n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/ac5b23db-ce21-45ef-a0b1-56eb4f049bc3n%40googlegroups.com</a>.=
<br />

------=_Part_11381_2123454918.1634831792338--

------=_Part_11380_1676655432.1634831792338--
