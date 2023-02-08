Return-Path: <open-iscsi+bncBC755V5RXMKBBHO6R6PQMGQE5HOBYPY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 26ECF68F76E
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Feb 2023 19:51:12 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id c9-20020a05620a11a900b0072a014ecc4asf12744167qkk.18
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Feb 2023 10:51:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Pa3rmtHf9dQqwYeLv4/bRTuIJVnVbDKgNIhWfpfr2vU=;
        b=iGtTgkmVpyuWiQfgQS8+01st2LAG9GHecu7wV0npDoqe8pnT5wCUvPIV9BAZJu9pj8
         fVtZGQWfyCBNgrOG/w4kZUCGnupmxkR04zlbVH8ksHcMquYLu9CQZ4m4mKWKgJ469eO8
         VTV4qzIuI6ymbmHKcoG/rBWhNfYcXShlxYQ6lHm72bu/U5DAjv+bfDnxwS5gYD/q+RXT
         EdhaNZdA5IfnDJw7zoAaESat+cHdI9b1iZUO+PnDPsaWgUkU/ibtY9wsTjOqaJ80q1al
         WH5J3XlycJd5UQ/8PlWs56rG7tiLJo1mZ1gvjptmrcTEk/f3I8c9LrDWM8X9xqljFlHm
         3qjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pa3rmtHf9dQqwYeLv4/bRTuIJVnVbDKgNIhWfpfr2vU=;
        b=CIoTG1Lxt193baKIP8qoSU95bLR3lfzCj2V+5KyuBS0GcL+mHHACRnn/rL9xfqArRP
         0fY3q/rBlgqbRp3zn26Ytfo6jmBBtZvRKzUhW89qK83Fha8DkJKl1ydW2YOnT7BVK1kl
         kLI9HTeV8I3i/rfq4e/bbNVMCFvjswrUeTJkfSxEYABQ4WeKjhdfgNFnIP4CZcvAHBrQ
         eT8slRehILx5XpPCutx46TvZ41Agzy1pN0p/0VGNNsoL/y5c8kEBXZj2ZozwgUcM3SJ5
         QJLwo2/XTU7kBdaOXG4ExZyQQrK9RFCJn11jLq9Cfh9zRHdwdwD4hEBqDN8dGxcbcL2w
         S1zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:references:in-reply-to
         :message-id:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pa3rmtHf9dQqwYeLv4/bRTuIJVnVbDKgNIhWfpfr2vU=;
        b=v1X6U3s2pn/6Gixiv8q5oOz4v+X3jAtw5I3wgZf0PG3GHqAV/VTzFUxHD5gj23fMII
         HHxpf0Wqzc0x1iqhAIbis3txtSretn4bz2l8xbevl3QLArR+w9BPX5W2rgwTq3yMSzcw
         cV/Y1EiMEurvfq+zh7esLv0KMNfqzeTEdqKWVHTcoye+Qlp68CFaeVKobiIHlsIJUbKC
         3D2sN7eS7Ki6eCuG/D6FK4Ti+si3pEFfh/1OQ3gy+vIz6+1khuAegU4F/dNvxCBY4tHo
         IRK+/JgoOINgoSrFBdggYOcDUiD6IfscQMgcmJGvK9E0Xpvvf0XsPIL2jA+RdDhqkUu/
         lYpw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKWhsNdzZGLTMPMqacOcFsTAqr2HM4mpez63nkmCSqZ6k85eMv6f
	/49lVsc41wY3Xog17/8xPgk=
X-Google-Smtp-Source: AK7set9gldShn/t3jTAs1QRXtaSdzisBscgIC9vH0VPD1WNCLF84IzaUI8gYODzuDof2KkH5mEip7w==
X-Received: by 2002:a05:622a:1389:b0:3b9:b2a3:809f with SMTP id o9-20020a05622a138900b003b9b2a3809fmr1611022qtk.107.1675882271013;
        Wed, 08 Feb 2023 10:51:11 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:7195:0:b0:3b8:2529:98c4 with SMTP id w21-20020ac87195000000b003b8252998c4ls20554548qto.9.-pod-prod-gmail;
 Wed, 08 Feb 2023 10:51:09 -0800 (PST)
X-Received: by 2002:a05:622a:14ce:b0:3b9:b49c:c439 with SMTP id u14-20020a05622a14ce00b003b9b49cc439mr1156050qtx.110.1675882269096;
        Wed, 08 Feb 2023 10:51:09 -0800 (PST)
Date: Wed, 8 Feb 2023 10:51:08 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <ef516f53-0ad8-4bc5-88d4-91730e2b480an@googlegroups.com>
In-Reply-To: <0f3de371-d39f-443a-8644-a608c465dd14@googlegroups.com>
References: <bc52aa2052b94973be21202c0de6b06c@XCH-ALN-006.cisco.com>
 <20160309172353.6lt5ah4zhiw7qyda@straylight.hirudinean.org>
 <0f3de371-d39f-443a-8644-a608c465dd14@googlegroups.com>
Subject: Re: iscsi daemon in docker container
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4296_399186997.1675882268090"
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

------=_Part_4296_399186997.1675882268090
Content-Type: multipart/alternative; 
	boundary="----=_Part_4297_95434119.1675882268090"

------=_Part_4297_95434119.1675882268090
Content-Type: text/plain; charset="UTF-8"

Hi:

I'm trying to update open-iscsi, using Chris' patches as a starting place, 
so that it's network namespace aware, and hence could work in a docker 
container.

I will soon (I hope) be testing it in a container. So far, it seems to work 
using "ip netns exec".

Please see the RFC for patches I posted.

On Thursday, February 9, 2017 at 8:33:12 AM UTC-8 ayyanar1985@gmail.com 
wrote:

>
>
> On Wednesday, March 9, 2016 at 10:53:58 PM UTC+5:30, Chris Leech wrote:
>>
>> On Tue, Mar 08, 2016 at 02:54:29AM +0000, Serguei Bezverkhi (sbezverk) 
>> wrote: 
>> > Hello, 
>> > 
>> > As per Michael Christie suggestion, I am reaching out to a wider 
>> > audience.  I am trying to run iscsid inside of a Docker container but 
>> > without using systemd. When I start iscsid -d 8 -f, it fails with 
>> > "Cannot bind IPC socket". I would appreciate if somebody who managed 
>> > to get it working, share his/her steps. 
>>
>> You'll probably need to run it using dockers host mode networking, not 
>> using a container specific network namespace. The iSCSI netlink control 
>> code in the kernel is not network namespace aware, and can only be 
>> accessed from the default/original network namespace (that's the IPC 
>> socket). Not being able to use a new network namespace also means that 
>> you can only run a single iscsid instance on the system. 
>>
>> I had the start of a kernel patch series to deal with this posted a 
>> while back.  I never finished the sysfs object filtering by network 
>> namespace for iSCSI, particularly moving the flash node db sysfs code 
>> from bus to class devices to allow for namespace filtering was still an 
>> open issue. 
>>
>> - Chris 
>>
>>
> Hi Chris,
>
> Do you any latest update on this?
>
> Thanks. 
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ef516f53-0ad8-4bc5-88d4-91730e2b480an%40googlegroups.com.

------=_Part_4297_95434119.1675882268090
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi:</div><div><br /></div><div>I'm trying to update open-iscsi, using =
Chris' patches as a starting place, so that it's network namespace aware, a=
nd hence could work in a docker container.</div><div><br /></div><div>I wil=
l soon (I hope) be testing it in a container. So far, it seems to work usin=
g "ip netns exec".</div><div><br /></div><div>Please see the RFC for patche=
s I posted.<br /></div><br /><div class=3D"gmail_quote"><div dir=3D"auto" c=
lass=3D"gmail_attr">On Thursday, February 9, 2017 at 8:33:12 AM UTC-8 ayyan=
ar1985@gmail.com wrote:<br/></div><blockquote class=3D"gmail_quote" style=
=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding=
-left: 1ex;"><div dir=3D"ltr"><br><br>On Wednesday, March 9, 2016 at 10:53:=
58 PM UTC+5:30, Chris Leech wrote:<blockquote class=3D"gmail_quote" style=
=3D"margin:0;margin-left:0.8ex;border-left:1px #ccc solid;padding-left:1ex"=
>On Tue, Mar 08, 2016 at 02:54:29AM +0000, Serguei Bezverkhi (sbezverk) wro=
te:
<br>&gt; Hello,
<br>&gt;=20
<br>&gt; As per Michael Christie suggestion, I am reaching out to a wider
<br>&gt; audience. =C2=A0I am trying to run iscsid inside of a Docker conta=
iner but
<br>&gt; without using systemd. When I start iscsid -d 8 -f, it fails with
<br>&gt; &quot;Cannot bind IPC socket&quot;. I would appreciate if somebody=
 who managed
<br>&gt; to get it working, share his/her steps.
<br>
<br>You&#39;ll probably need to run it using dockers host mode networking, =
not
<br>using a container specific network namespace. The iSCSI netlink control
<br>code in the kernel is not network namespace aware, and can only be
<br>accessed from the default/original network namespace (that&#39;s the IP=
C
<br>socket). Not being able to use a new network namespace also means that
<br>you can only run a single iscsid instance on the system.
<br>
<br>I had the start of a kernel patch series to deal with this posted a
<br>while back. =C2=A0I never finished the sysfs object filtering by networ=
k
<br>namespace for iSCSI, particularly moving the flash node db sysfs code
<br>from bus to class devices to allow for namespace filtering was still an
<br>open issue.
<br>
<br>- Chris
<br>
<br></blockquote><div><br></div></div><div dir=3D"ltr"><div>Hi Chris,</div>=
<div><br></div><div>Do you any latest update on this?</div><div><br></div><=
div>Thanks.=C2=A0</div></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/ef516f53-0ad8-4bc5-88d4-91730e2b480an%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/ef516f53-0ad8-4bc5-88d4-91730e2b480an%40googlegroups.com</a>.=
<br />

------=_Part_4297_95434119.1675882268090--

------=_Part_4296_399186997.1675882268090--
