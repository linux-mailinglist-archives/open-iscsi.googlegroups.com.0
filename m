Return-Path: <open-iscsi+bncBCYMVIPVXQMBBE5UXKIAMGQEF3DYE3A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4494BA8DA
	for <lists+open-iscsi@lfdr.de>; Thu, 17 Feb 2022 19:55:18 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id n13-20020a056602340d00b006361f2312desf2796199ioz.9
        for <lists+open-iscsi@lfdr.de>; Thu, 17 Feb 2022 10:55:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1645124117; cv=pass;
        d=google.com; s=arc-20160816;
        b=SVtWjq2fpDqbyVZHq/7bo6Za6JzJd03XjPFXtE6jnAk1mKGUeyLKHyc7bwLVv3FRe3
         Vec8bWh7m+CnGLOxkRPk4c5OAoTSUI2Kufa6rfuGXy21g2BgfBpOhE2uBJh6P+wek1Su
         1eQ1GcXCDrYLJoP5utcHDZLP9+U1qxcFZ9pYpzOUkX1DJ5m8MEq8q7R6nszJd5xZV2C8
         ZwBzZQ15cAGCVfudP0KyCP7R5kfZUeJwR0eA1uc8HPvD85Xgm/b+MEEA8eNbVs3R6/Zy
         Odp5cEiPmAHfLT1VW/6pZWvw5M7frdzRdsLrsLIW2XiPC43PDSvhRN6Z1Hx0MceaK3Hi
         jnOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature;
        bh=earSzajwcv//sW0a4JNfaghsrI0YQqc6pMVPWUIPyiM=;
        b=Pke36XPYR+ZbBNPwp6f0o9iIvxaozfDjbHLGzz/4qqd6tyBwOsMCHhSg6iAl0uq6T3
         +QvVkkF7r19RPjn69E3PHzTaK0IPcRjSTSgYLN0g+UMS1qg67oR90mHdUm8iQ7OfcDqp
         yZ3u2PGOYE/XW1Ki8HIzpOmNOoopm6qqWtynHmADAT+i2S1btwM+vXoChiJicx0MtDp7
         xJIuclMyxE7T2vjas2Q7HoW0v1KQniIwv00ieO4gsT7VfZDtm2dP4+sdEJlhPDLnsRrr
         xiGx6CI3d5htNEmdKLN2ZxvU1lBP9NglDRSxxVA+Sbq/YveSRT6IBrVNjAFXmjxa9M9w
         H86w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EL63fOKt;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=earSzajwcv//sW0a4JNfaghsrI0YQqc6pMVPWUIPyiM=;
        b=m2x2mpOlNQ4anap8j6R0HJf/PpW/YlPI9KOvTrDt0EPhR/yBEGw5obCaiPy2Fhhhi1
         hiNT0P9jOqqT2Do7KP0rHdsOHceJR7GYx9lNWCayC6D3XvP4/HqT/N57e7HFVLUTS5jC
         2zgPH0gJxpX9xfKosaBjoTyh07Uqhpow8ltdgiS0nbLjG3+1NwQ+t5qUdqJNqEbGYY2C
         g/Vov/33xpPTkv7ylEwIkSvppT+DQAXTF+07Mp+QzXL3iWQ6NihxWqU+VMHnLPUcbd0S
         MmS5A35VLy0RzinXcHfzSRWSd44YeA3SRegiAJZTtW0vxcmsgaK7I58ZzpwZBA+YtVTm
         ZzMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=earSzajwcv//sW0a4JNfaghsrI0YQqc6pMVPWUIPyiM=;
        b=fCy+zHC65OmPUHMAdyT4DDaKrbr6Go/d0fD0fMje575XX+takg9vzxijLwoS2kS90g
         XsicSlIVxMfkIzrhD4hlmce51IYupFkgkSPB3FK+UpJVySgphknfXKq7qjRUbU2mClmU
         QcI+zYuQdLpN4UEV/A28z4TFo1pm+nL9/t7gmgOp+g565hYF93DUSbukyd0nvqxa8wJz
         ApSg7F32k8f1HrOVHgeJvoM75VIX7LKC5QfDxdkiCPrXaHd17fSVlmPfpHPp5ptuGnCi
         uiaDjxMFYWCZp/mH+x+uzOf0VCbB0U8L+eEWTGbQHT2d3y1R1UAk4rvRUPMOXrhn2eYT
         7QLw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531kBw4Q9cxVuu7mMb3AyJ+0TDkS8u0MLJRsg2rhOyzrPCoxSrdD
	B2KEkH7717PPhp/hsbssw08=
X-Google-Smtp-Source: ABdhPJyp0qPPb2jn5aeTg8OPSbe7QNYvOUJQUs8IlyPqx5v58cUAkWEQPH5bGC6vTieUW2jQZubnxg==
X-Received: by 2002:a05:6638:381a:b0:314:e62:27dc with SMTP id i26-20020a056638381a00b003140e6227dcmr2756998jav.59.1645124117284;
        Thu, 17 Feb 2022 10:55:17 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:1524:b0:2be:a165:f631 with SMTP id
 i4-20020a056e02152400b002bea165f631ls757304ilu.3.gmail; Thu, 17 Feb 2022
 10:55:15 -0800 (PST)
X-Received: by 2002:a92:d242:0:b0:2b9:a33b:9068 with SMTP id v2-20020a92d242000000b002b9a33b9068mr2974308ilg.144.1645124115592;
        Thu, 17 Feb 2022 10:55:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1645124115; cv=none;
        d=google.com; s=arc-20160816;
        b=xUL00avovTIF2sIt64JUPtt0slClRYnEU8CRdVqiae9mf3lsijnDgkrdc7eR2kRTaW
         wZmRBPNqgvXrRng6WJXd0fy7zEQVa6gWUeaB3iyRrqd5e3yDCrSjYU0o4J3V4EmbCP/Y
         RiAN1jIy0UjKHAtZgk57hmmMTmOJM5csP9DriMfvQvdv9V+Rmdf0SA56/1fjysty+6Iv
         g/+4tPlbyjjctDHgszaXGXM/rmgCNZ8vyzsxu47/RvICL3+71eRcjDnBfd3o2bPI8BHq
         8jr/rl+Wli/NReQz6N5dTYaB3Rv5xviAeU2tbx/B6NJcrEbDqkdGCfXX0e33zFq/me1q
         Srzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=D0tEzLUxkC3Am7CkKekRGMrNGXcTg9U9ugmKG94iFX8=;
        b=O+uM2mdqKdlNK/mLNvf2/lK7+CuMoB2AwyAGyDI2fYc7sf5C09B5G0t/LLK+yByZX9
         O5iaol0R8DyowyfF3NEfdrsAaosqnR7p9zKKWCkZ4sIRg5k4HAfLckEwWFxcMTzHyRqP
         Pdayk5quHg4BVTmZscIopYXP3QfIn1CV0WN5ZIfwheFKttS+0G1szXzi6uJHQRC2V8uy
         Ykn1M0juPCS7FwMsqRnCQTzHTaafGu430LNQ26priEBix0pMEj0glFwPsqE5+fOuKBQd
         n7RwIQp9dRHa6qC/8OJnmkVbMgtXht8YmofhuVwPAfBP2SBwU963SYy4pAVXJ6L7s0mZ
         2HBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EL63fOKt;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id n11si1082124jat.6.2022.02.17.10.55.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Feb 2022 10:55:15 -0800 (PST)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-338-XTgzuFzmNr6WBWITZ4Gxgg-1; Thu, 17 Feb 2022 13:55:13 -0500
X-MC-Unique: XTgzuFzmNr6WBWITZ4Gxgg-1
Received: by mail-ed1-f69.google.com with SMTP id f6-20020a0564021e8600b0040f662b99ffso4095716edf.7
        for <open-iscsi@googlegroups.com>; Thu, 17 Feb 2022 10:55:12 -0800 (PST)
X-Received: by 2002:a17:906:8505:b0:6cf:2767:f447 with SMTP id i5-20020a170906850500b006cf2767f447mr3414410ejx.321.1645124111658;
        Thu, 17 Feb 2022 10:55:11 -0800 (PST)
X-Received: by 2002:a17:906:8505:b0:6cf:2767:f447 with SMTP id
 i5-20020a170906850500b006cf2767f447mr3414392ejx.321.1645124111328; Thu, 17
 Feb 2022 10:55:11 -0800 (PST)
MIME-Version: 1.0
References: <d72a3055-5375-de38-d286-8e88fc6c9487@suse.com>
In-Reply-To: <d72a3055-5375-de38-d286-8e88fc6c9487@suse.com>
From: Chris Leech <cleech@redhat.com>
Date: Thu, 17 Feb 2022 10:54:59 -0800
Message-ID: <CAPnfmXKkPsmzax38_tgBQV2vURso1e9MwYiL74rV1=vH8OZxtA@mail.gmail.com>
Subject: Re: open-iscsi service iscsi-init can run too early, when FS is read-only
To: open-iscsi@googlegroups.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=EL63fOKt;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Thu, Feb 17, 2022 at 10:42 AM 'Lee Duncan' via open-iscsi
<open-iscsi@googlegroups.com> wrote:
>
> Hi All:
>
> There is an iscsi service that does nothing but create the
> initiatorname.iscsi file in /etc/iscsi if it does not yet exist called
> iscsi-init.service.
>
> For iscsi boot situations, this service can run quite early, in the
> initrd image before the root pivot. Because of this the
> DefaultDependencies=no line was added, so it could run earlier. But
> because of this change, it can now run too early in the real root. The
> problem is that it can actually try to create the initiatorname.iscsi
> file before /etc/iscsi is writable! So it generates an error message,
> fails to create the initiator name, and it makes the rest of iscsi
> services fail, since they depend on iscsi-init.service.
>
> In order to address this, I added this line to the service file:
>
>  >
>  >  [Unit]
>  >  ...
>  >  After=root.mount
>  >
>
> This was an error. I mean to wait for the root disc, not "/root". :( In
> testing, this just happened to work on my systems because we use btrfs
> by default for the root disc, and btrfs creates a "/root" subvolume
> (i.e. mount point).
>
> The mount point target for the root mount is actually called "-.mount".
> But even adding this didn't fix my problem with iscsi-init running too
> early, and it's because iscsi-init was waiting for the root disc to be
> mounted, but it turns out it's mounted read-only for a short time,
> before it's remounted read/write. So it was getting an error trying to
> create the initiator name file.
>
> Long story shorter, I consulted a systemd expert, and he suggested the
> following:
>
> > [Unit]
> > # this adds both Requires= and After=
> > RequiresMountsFor=/etc/iscsi
> > # systemd-remount-fs.service is optionally pulled in by
> > # local-fs.target, don't start it here (no Wants=) but if it's
> > # running wait for it to finish (After=)
> > After=systemd-remount-fs.service
>
> and, to keep iscsi-init.service from running before systemd-remote-fs is
> scheduled:
>
> > [Install]
> > # just to ensure being in same transaction with
> > # systemd-remount-fs.service
> > WantedBy=systemd-remount-fs.service
>
> Testing has show this works on several different systems, but before I
> "fix" this again, I thought I'd ask for input, in case anyone has
> systemd insight I do not.
>
> Suggestions? If I don't hear anything I'll go with the above
> recommendations.

I'll give these changes a look, I can never tell what service files
changes are going to do without playing around with them for a bit.

> If I can't figure this out my next suggestion is going to be doing away
> with this service. Once should not ever be in the situation where there
> is no initiator name, since that should be generated when the RPM is
> installed IMHO (which is what we do).

The idea of using a special unit for this came out of issues we had at
Red Hat with generating an initiator name at RPM install time.  It
turns out that a lot of systems today aren't installed from RPMs, but
rather users build an image from RPMs and then start up new instances
from that image, especially when virtualized.  If image building needs
to remove or replace the initiator name file, it becomes a problem
that deferring to first run time solves.

But if anything I might question the actual value of automatically
generating a random initiator name.

- Chris

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAPnfmXKkPsmzax38_tgBQV2vURso1e9MwYiL74rV1%3DvH8OZxtA%40mail.gmail.com.
