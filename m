Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBYPKXWOAMGQELYAUP5Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 416406449DC
	for <lists+open-iscsi@lfdr.de>; Tue,  6 Dec 2022 18:01:25 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id z21-20020a2e9655000000b0027736b9bb8asf4100910ljh.0
        for <lists+open-iscsi@lfdr.de>; Tue, 06 Dec 2022 09:01:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670346084; cv=pass;
        d=google.com; s=arc-20160816;
        b=bB5L8i7WZ3R1HdtNnkRM/Y0COzljk0ZFK2iqpwwdVQZezqfl4HnzF0WtEjgxQTHPeH
         xhNYQ2wIMEORgCGzs9MljHz6r/3ZrRS2X4sMs4YrkvPg3HSfFG2//p5l3Tz5d/gn1zcw
         cigntOpuaDXnVUQH89CZ4FpwkorQqLhl41gzc44a2+1Ehs6Q7WrwTJsTDksMMNF8SOJ1
         EeL2TPZ/h6f2TDGk1qbqdakYV/bs7L2QI7WpKMJeDav7MgZiIVrBaZ62Gm+Yfv9p/JGb
         lX1lzC6flYa+NKTj9k86QlemjkWAgQTlRJA6bgfKVnYXeqIQSHBHHq8dQYRMI+hQ5nkk
         2U6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=gXJTBlcd4uY+m297HGfYCLkf0eCOqXDkPyxm0ohbvYw=;
        b=M1UFzO5xcuFfAtnVK5vdHatMjo9ZeagTnFhfDBMLwEsahzbg5HfE4arbgc502N0aJk
         OjBJ8HpjIE1imXXH8Tdk2Hox2A7Uxd0APBLaNR4UWAPdtT7fh4lNXwEwEqdrhlQeLYIm
         loclCvVdCaWJjuO9sDyI+/pG12LJ7o2zVhmom/QypOmPR2zdF4GAz6V5Gv9pe3N89PCb
         yqZTJXT54F4KHYuixH6SNT3XVY2w24qAMQmS57zrVlyV9+xn4naVDUcQarMx5cPD7/Rb
         bipKy2rqxOS+QhrVUDoIzFE3G2W6cAgs5aJBrxiSeoe7plmujR1T9ZK4IglNb/VkTfZc
         Bqgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=oQa5orOY;
       spf=pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gXJTBlcd4uY+m297HGfYCLkf0eCOqXDkPyxm0ohbvYw=;
        b=X98m6QoPnpBzdyGtSOLk0EJ6+12tV5q/qA5UpG1og4g/0co+wBw4KmgJvEC4dWu/CP
         iyBd0T7z/asS0tMH4k12QaZ4hhKc86NN1jO/yn5Nn5HcWl5qitnDCPhHwXJDp0Mr8QTy
         3uanTB+yNJ4O9Mg/MLX8mdLsRrMuA5Aa6pGBcY8vUfgpI7Au04nPJpDEtb7n+AML5Ar8
         Pi3KcdZAKUSPzOj8QeUnkChe6eyxCHGyQiTCjcWKFVNJsGJh6TglRSwiugWuGpQvM0Dr
         uo5veI0h6fYVbjpIF+BqqBlmVTeqeAk6PiC8e7rTvUiK7wvv7z7+RtQlKYlViQbRuxnY
         Hn6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gXJTBlcd4uY+m297HGfYCLkf0eCOqXDkPyxm0ohbvYw=;
        b=gVo/zvV2ps3GVcbQ+5AjuNItLeBh1KWdPU2U/0ccjUPXgzan/LApLNpTzlPl3zXWxS
         obC/T0pXUvQYFcYPo8sCakzg5LMsdjUbcEdTAKX6Jsuj/5AP1T09boOTvNR3XBxfX01/
         2beDyJsxezsG2afqIcbyBkZ8hrnouv1XVCYTtIt1bnPTZjw9vgXC5h9Wkmv3q+G6lzDh
         v8spuXdjf1NGu2TQLf5b5ToHFWUhlhdji+z7+y9/NtcgwmfdLuUvae0d34IzHKINtXNu
         bN72VyeN0EU96lfh8iXFK+2oICmzznrKoOwCuj4nrCYiKJkdaV92csUyxIICZxVQEJlX
         jqfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gXJTBlcd4uY+m297HGfYCLkf0eCOqXDkPyxm0ohbvYw=;
        b=k7fS1ZMuTwe4uBoO4TNwLBeZVDt2gQ41+SxoI842JfPADvU5BvOR2yMeFQr+474Xcq
         WGMRWJBXDJBgKD98NsVqPPQoXeVAL+ZxZIllPiCZ2lS4/JdSl0EmFHmytuMQxJwTiFZ5
         WbBLH0MAjgLY8GT+7CNSjQqGB3ZQeC0Sj6tsa0jdZAB+rJcZ5tepbQYS3IkVJ0Nq0SvQ
         +fI8vanL1YD3FtYcU41scsfzYXi5WPInR55aSblyYB7j3zOmFp64AaGaJQWnjjSNfUps
         SnSVRdd+m+qE+hg0+H2BTeQp2gIwJuBEqoEbJC+kOIhcpbBgpjt59RVJzLdIw/Im/lrI
         TCKA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pkn5GVX4qZRtQGE+Zy/QQVGZzfjjzLUI9GEd33v+X3xwpQP5ijN
	vrOzsP3+SaU9WZ+FUO484Ng=
X-Google-Smtp-Source: AA0mqf46c1RNGeMWI0f6/CSts8Ue1Xa3Ofr803W1wYWd+awN5GZkNAwq/I3fIn3g6HF8m7FZucMNGA==
X-Received: by 2002:ac2:5dc9:0:b0:4b5:8f6f:baf0 with SMTP id x9-20020ac25dc9000000b004b58f6fbaf0mr381892lfq.217.1670346083545;
        Tue, 06 Dec 2022 09:01:23 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:651c:1072:b0:26b:ff81:b7cb with SMTP id
 y18-20020a05651c107200b0026bff81b7cbls5907ljm.6.-pod-prod-gmail; Tue, 06 Dec
 2022 09:01:20 -0800 (PST)
X-Received: by 2002:a05:651c:1255:b0:277:71e4:20a3 with SMTP id h21-20020a05651c125500b0027771e420a3mr26597008ljh.332.1670346080321;
        Tue, 06 Dec 2022 09:01:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1670346080; cv=none;
        d=google.com; s=arc-20160816;
        b=VCI/UI/vMxYvmXZoMHXtMTuolUNJ0QgVouS8c1/D4HOd7zlo4GLbARccOtnQOrT7/x
         hiQiYdYxGS3LEoXLlhXItlUY7kRAxOefkXLLeTbvakhn9b98L/qUPkaK3+nRjuBvvDZN
         tmap9rTssee2OY8wqzDiQBs/i0mlLFwIdcBPWGWbgBeRsOF9VZMDMhZ+YZCckyULEgiM
         RK6KGQMSvg0F4S9ng2BjpHNcVy08+zYKxr8qpSd8G9yfhNhwWDCiyLvIc1CokJrJ6WN4
         esbprHZ/r4XCyXVN2aOsC05RpCcbZO4F0DZGZrh+SCyh+/WngnELF7z8/BKIg0pkF1hf
         NUYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/UK7VNjHeKbQCzCJlidaouJUPBUOFZD/7CF4LFF5JZU=;
        b=s4+xCOB9+jNO6iPLcqhBpIyJqB3P2J9mD4fjDA7ol4arAWxiPi2tN/cNq6G8koVXXr
         ap+BQKNDWB88vaGVfy61BNE1WCvlp8mGGoCER6zQkPqvoxSIBf2UnpE5a28Q8oudTVa1
         ADQ5Sr4zLnCYKuuny57dB/q1BylVTAmypxgIbhgYQqps0Ki6YZEbeclU2/qB7OF2ujTJ
         S/NbSRU8CAVgQyLxJcf24lUApD2rNbproU1i1HsRccrO9e07pvF+/91I/KaMFZKc2x5I
         0zGXfvHHCznXDPLi2adfITddo5zlEELO2SM+rKi1a+h2LwKhlmnL043AoD/X4GdvjyRh
         y53Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=oQa5orOY;
       spf=pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com. [2a00:1450:4864:20::636])
        by gmr-mx.google.com with ESMTPS id c5-20020a056512324500b004b4f4360405si801069lfr.12.2022.12.06.09.01.20
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Dec 2022 09:01:20 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) client-ip=2a00:1450:4864:20::636;
Received: by mail-ej1-x636.google.com with SMTP id m18so6180208eji.5
        for <open-iscsi@googlegroups.com>; Tue, 06 Dec 2022 09:01:20 -0800 (PST)
X-Received: by 2002:a17:907:7613:b0:7c1:5a7:b91c with SMTP id
 jx19-20020a170907761300b007c105a7b91cmr4575045ejc.749.1670346079851; Tue, 06
 Dec 2022 09:01:19 -0800 (PST)
MIME-Version: 1.0
References: <20221122213040.4128105-1-haowenchao@huawei.com>
 <4d21f806-6653-5457-918c-563a3032d128@suse.com> <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
 <0f7258d5-ff8e-fa4e-ab8e-5125c42a6d07@suse.com> <CAOptpSO=BEGWFkzT2umFXnWSyn24XR5nHc-mnTvsVb6PAn=4xA@mail.gmail.com>
 <057b6774-646d-5970-4743-20e249856688@suse.com> <CAOptpSMzQC0ur7oWFRD0fzie7eENxh6JK+c0JE+oLhCiypQBRA@mail.gmail.com>
 <181bdb6a-fbaf-1e18-9d08-4bbabf467321@suse.com>
In-Reply-To: <181bdb6a-fbaf-1e18-9d08-4bbabf467321@suse.com>
From: Wenchao Hao <haowenchao22@gmail.com>
Date: Wed, 7 Dec 2022 01:01:07 +0800
Message-ID: <CAOptpSP1L4EAVcHJ5xEDF+iZTziOVt=E7KGefj+3Vj9-fN-a-A@mail.gmail.com>
Subject: Re: [PATCH] scsi:iscsi: Record session's startup mode in kernel
To: Lee Duncan <lduncan@suse.com>
Cc: Wenchao Hao <haowenchao@huawei.com>, Chris Leech <cleech@redhat.com>, 
	Mike Christie <michael.christie@oracle.com>, open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: haowenchao22@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=oQa5orOY;       spf=pass
 (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::636
 as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

I think we have two things to discuss here which we should not confuse.

1. We can logout iscsi sessions even if the related iscsi disks are
   still in used
2. iscsiadm/iscsid would overwrite session's startup_mode

The first issue can be fixed if we can fix the second one.

The original purpose of my patch is to record session's startup_mode
in the kernel, so iscsiadm/iscsid can refer to it before logout session,
this can fix both the two issues.

While the safe_logout mode can solve the first issue in another way by
checking if iscsi disk is in used. But we did not enable safe_logout as
default and it can not cover the sense when iscsi disks in not mounted
nor used by multipath or lvm.

The safe_logout mode can not address the issue which iscsiadm/iscsid
can overwrite session's startup_mode.

Firstly, we need to come to one same conclusion that if it is a bug to
be fixed, then
discuss how to fix it.

If we treat this issue as a bug, we have two ways to fix it:

1. Recording session's startup_mode in kernel is a way to fix it
2. Checking if session has been created for this node before updating
   the node's configure file is another way. But we must be strict our
   users would not edit the configure files by hand.

On Tue, Dec 6, 2022 at 1:13 AM Lee Duncan <lduncan@suse.com> wrote:
>
> On 12/4/22 05:02, Wenchao Hao wrote:
> > On Thu, Dec 1, 2022 at 3:53 AM Lee Duncan <lduncan@suse.com> wrote:
> >>
> ...
> >>
> >> Let me start by saying I agree with you now, that there *is* an issue.
> >> But your test was flawed.
> >>
> >> After you log into a target, changing the Node database does nothing.
> >> The node database is only referenced with you login using it, e.g.
> >> "iscsiadm -m node ... -l".
> >>
> >> But even if you logged out and then back into the target, thereby using
> >> the updated Node DB entries, it would not have worked.
> >>
> >> For one thing, "iscsiadm -m session -u" just logs out of all sessions,
> >> as far as I can see, based on testing and code inspection. So that is a
> >> problem.
> >>
> >> Note that the iscsi.service systemd service file on SLES does "not" do
> >> that. It instead logs of of "manual" and "automatic" session, but only
> >> ones that are listed in the Node database.
> >>
> >> And as you pointed out, any knowledge iscsid has of existing sessions is
> >> lost if the daemmon dies or is stopped, then restarted. At that point,
> >> the only knowledge is has about each session is what it finds in sysfs.
> >>
> >> I have done some testing with your new kernel change that adds a
> >> "node_startup" sysfs string attribute to session data. I modified
> >> open-iscsi to pass in the node startup value, and that's a good start.
> >> The next step is adding a "startup" value in the session structure,
> >> filling it in from sysfs (or current state), and refusing to logout out
> >> of sesions that have this set to "onboot", which all sounds fairly
> >> simple. I also want to test with "iscsiadm -m fw -l", which is what I
> >> believe is used when booting from software iscsi (i.e. iBFT).
> >>
> >> Have you already worked on the open-iscsi side of this? No reason for
> >> duplicate development.
> >>
> >> --
> >> Lee Duncan
> >>
> >
> > Sorry I missed this message, I have modified open-iscsi to work
> > with this sysfs interface. But I think we do not need this any more
> > because the safe logout can avoid disks being removed.
> >
> > Checking holders and if disk is mounted before logout seems enough,
> > so ignore this discussion.
> >
> > Thank you very much for your reply.
>
> I have some philosophical issues with using safe_logout.
>
> It is off by default, which implies to me that it has overhead. If I'm
> doing a lot of iscsi session start/stops, I don't want the overhead.
> Otherwise, why not just use it all the time.
>
> Also, it only checks for mounts. What about if some process has the
> device open but isn't using it for a filesystem?
>
> And since it has overhead, I'd rather just use it on root iscsi volumes.
> I have not had a single problem report from folks that have ended a
> session by accident that is mounted on. Since ending your root volume
> iscsi session is fatal, I _would_ like to proactively avoid that
> possibility. So I want to only set this attribute on iscsi root volumes,
> which means it'd have to be a per-node (or per-session) attribute, not a
> global one.
>
> Lastly, I can imagine a time when I want to override safe_logout, say if
> some process is stuck. So it'd be nice to have a "--force" option to end
> a session even if safe_logout is set.
>
> But as I said, these objections are philosophical/theoretical.
>
> And for the record, I like the idea of tracking the "start mode" of
> sessions. Right now, if I list the iscsi sessions, I can't tell which
> ones where started from firmware, which were started in the initrd, and
> which were just manually started. So tracking (and being able to
> display) the startup mode would only be a good thing IMHO.
> --
> Lee D
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAOptpSP1L4EAVcHJ5xEDF%2BiZTziOVt%3DE7KGefj%2B3Vj9-fN-a-A%40mail.gmail.com.
