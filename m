Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBNWS4SLQMGQEBIGSVHY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id B35AD5925A5
	for <lists+open-iscsi@lfdr.de>; Sun, 14 Aug 2022 18:56:24 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id f21-20020a1cc915000000b003a3551598a1sf1023192wmb.0
        for <lists+open-iscsi@lfdr.de>; Sun, 14 Aug 2022 09:56:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660496184; cv=pass;
        d=google.com; s=arc-20160816;
        b=VLN0vHGfSuZ2/kt/9bRF4mzLPFeJbccn9JOuB3TGz0MBqnQPsh8bnQrm93f1FWTkQi
         fQpYx3TOFW7vLIjXjpSpY9Vew2ljPcPmSug27d+N0grhiFKCJOvDDnkbQluYyqIi4an3
         PikbAPjZnXbm/aNE+CmcFHEUmiolwSPEUwTUox+fLeqyuTFX2CeR8MhSLgRuyMM8Fyxs
         rE9Wfl+EXwIr6toMY8sRF+hAPg5KN6YSBi1BNZn03f43pwmHCxYKwTL4jYKbitKl5F7e
         AGvxCuJ9ZxNwmELA7eMQ/WeD9G2W4i5AUEN/93vo2sa+omJhpnrN4Wq6tQzJ0yXU0+z7
         dfLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=58XjpMvyMOnuLdO0ZkkcQ8OY/YQU1V4KB+IUsdlq2mQ=;
        b=aXKoRtXDfFnRvXmXinQk586rpBvsSMl693fGZrBFY9AITMNAptPekzLVfLI8v80+uJ
         5wmKOlB38vc+MMOFuMOVSggCoddHWP79yPBmMmyl4i5MVIVmcT/psBjjMkil0Rkw0Cjs
         PXcViqHbNLCQXYSDBvNEPo6kussdJjhd6PAkuRmnu1NyJl+R1dTnf33di6yfzUKE3r5n
         Alte9syvuHYM9lL5FNsV6bifGUe1Fw+NzFqtatWRcLQxppxJ6Q4yFXSQVBr1JgRZtHGg
         zHOHEnk3VgpiYEm994wLI+W5vUsLeBMKfSZttToxLrLBUEOUNTX3Wl1DbMEQGJqf8uY7
         tvMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=jIhzROlI;
       spf=pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc;
        bh=58XjpMvyMOnuLdO0ZkkcQ8OY/YQU1V4KB+IUsdlq2mQ=;
        b=rCu3nEL+bp1AdhLzaix/UZ2UHTnV4SNHc9OQsBviTuJHgIemEQ9byoeaDXNjNn+O05
         YVhV1RBnh3lhV5kQVzVtjjSlaNH/UB6cKizioEVW89nLy1uatZ+zahN0G4vy59yFyKKs
         NjuH1MxcOvSZzMv0/WJe0cZJ6IVL2xCScpBjlPhKMHeiqeVIGrhRhK6K24gHCPXhDntB
         kmHlgale9fakrof/0q2dCdPtojtn1080maT96aViMsJinFsXZEUBTkoSWLMPd4e+zY6A
         cRN0obZ3Kd/NzHaHbomXYWHA7rlM1axEj2uaMOilk9nYiyu4+uuIzcQI9jaMBtyo2KrD
         Sb1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:from:to:cc;
        bh=58XjpMvyMOnuLdO0ZkkcQ8OY/YQU1V4KB+IUsdlq2mQ=;
        b=F9drRVTPCQ5/gCD0RdIGNBcfK83bb+6swyMAPlv892brrDRwpxrGE6tmM/WxqzXAXD
         IqCvC7gVP9y4+DpCCOhAE2QfkM9jxwtI94XLy548/obdQv0ihn4BTJjhTOdkLqB7H/Ze
         tYL8GecTiDBKmc9sX9eSMmjFRrN24NXrA2/QsNOoF8bsWFHj4H0Mzs0EIG/hspsB6rcL
         JA9JfcJdBmU46y6fcZpNo8uoOiMeh66BeCRtkD9wnAK2zRtCbp3RE4fKHZu1mHHPuq+p
         GlOrBliShh3mVUwSV8v/sj7GYhyiaTG7REIidw59uZXhOhQ837Oz2ZdVAfEutIAD0ZDp
         N+Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc;
        bh=58XjpMvyMOnuLdO0ZkkcQ8OY/YQU1V4KB+IUsdlq2mQ=;
        b=sOJsHDF0BnjDwd7a47HJEfzJVZwqmTBbiK50r3RNq6YkvX40I0xAjyG89fxyyFX0Kk
         YsdLSp4sRDYjToQUVczO7/wd0hu95YkLFgcvUK0CfmwrzWK8Ng558QyMDXJb99UpAEOb
         pLOu5LhYrc1Blhvc/v08M5jWDd7iYIPEqoGMbequMVcwFSpRKKsbBKJEvFPfe0sDwNr6
         vnG6/dGPkNPEytNIiRAT7dkhFmUvzW6Xo5Jgac+thmC0zbtj/GFxUXp9q3CDeY4XTFR9
         8MGt3fC8wwR55NpJbF9B6CTXBeZmHS952nolquLNsaWcveu9PkQ0TnnoG6NnBYydo5Xc
         o43w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACgBeo0Mj7LVr22eWctxYx1KC5v09mLtwPbYfsyC2lIxdCFu1Pd8rNQb
	txXCfWmHW2HmBpLtSM+/qjM=
X-Google-Smtp-Source: AA6agR6+Ma9xDffOXyi3LghMUpsSC1VvU6rcDFnm5LfQ+dT0XdR47izOEgHlXJIYX4GByqnjqkFfrA==
X-Received: by 2002:a5d:4411:0:b0:224:f694:3e62 with SMTP id z17-20020a5d4411000000b00224f6943e62mr2976671wrq.47.1660496184408;
        Sun, 14 Aug 2022 09:56:24 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:255:b0:21d:a0b5:24ab with SMTP id
 m21-20020a056000025500b0021da0b524abls12510250wrz.1.-pod-prod-gmail; Sun, 14
 Aug 2022 09:56:22 -0700 (PDT)
X-Received: by 2002:a05:6000:10c3:b0:21f:15aa:1b68 with SMTP id b3-20020a05600010c300b0021f15aa1b68mr6858274wrx.693.1660496181965;
        Sun, 14 Aug 2022 09:56:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660496181; cv=none;
        d=google.com; s=arc-20160816;
        b=09qlWwCf3T2mTk3d1oxbIrxOoqa1d2T36Paub46JH326QBbVlNTtqHrk0gN+Pm6i8g
         tirPsKDMm4fJHLOpD7JJmyDNhW2gz9AvHdt3AVFp1lFFsr2dYQmLuGXMy7lvdJEj06mi
         lmk3jO6LN2AygpSKUamCkz7K2VGXcLqMgWHng/uo+IpgUKqfdIVRRu8IDAhayJiCb8Aq
         rpiZGWYz3lPEwtxPijeb/APdDaey31QYXhrR5S6duJySaHZ9GpLRmybxFeepS8sjB7kf
         ZmJvBdpHSvM0ItIjA1KdXsjo4rD9IZgFToRUsY7R+ZGVOArOtTFM84nrWzMmy+XuOFhN
         Cq7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3FPcPJtSj/bElkQiP9PnLcaKYbdRrJQOnxh5GM0k2J8=;
        b=gugpcVAVFCbVQ18cX2n6tB9/xF2kZfkUbcVUfUpgigr7S6x4am73ChkvcGVMfx1VXx
         BVHfbYfHIGBRt460mzOXUy/7aHKMbD5ZXFvuMEgXuKPto/Y74vhS/cW8+ljDdtYisXPK
         4Hm7InaOmlhXdaH18NJe2ZRGz2gMCLBtyt7exQ26YBChWQr8DRBuGU+CqoXfP/d36S3e
         WCa3tmriJbHusPgcd2XwFNMnq/HIcB2Zwhp8CGG2Mynpsk80v1JRBobPErLCTCNNgrsM
         /TuxS1avELxiDiTbkYnDRMx9966uIMMtUhAAj3vHSQdBIou8jpy3CToMxijWznV/Aeun
         0EtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=jIhzROlI;
       spf=pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com. [2a00:1450:4864:20::634])
        by gmr-mx.google.com with ESMTPS id y23-20020a1c4b17000000b003a5582cf0f0si505992wma.0.2022.08.14.09.56.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Aug 2022 09:56:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) client-ip=2a00:1450:4864:20::634;
Received: by mail-ej1-x634.google.com with SMTP id y13so9977575ejp.13
        for <open-iscsi@googlegroups.com>; Sun, 14 Aug 2022 09:56:21 -0700 (PDT)
X-Received: by 2002:a17:907:7241:b0:734:b282:184b with SMTP id
 ds1-20020a170907724100b00734b282184bmr8200009ejc.445.1660496181572; Sun, 14
 Aug 2022 09:56:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220802034729.2566787-1-haowenchao@huawei.com> <3ba71030-982b-c98b-78ee-ceca74da3b57@oracle.com>
In-Reply-To: <3ba71030-982b-c98b-78ee-ceca74da3b57@oracle.com>
From: wenchao hao <haowenchao22@gmail.com>
Date: Mon, 15 Aug 2022 00:56:10 +0800
Message-ID: <CAOptpSPLSbrQ8hgr275Ds7fwcBA_W9jYt0SFfhV-npPaz08S7g@mail.gmail.com>
Subject: Re: [PATCH v3] scsi: iscsi: Fix multiple iscsi session unbind event
 sent to userspace
To: Mike Christie <michael.christie@oracle.com>
Cc: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>, 
	Chris Leech <cleech@redhat.com>, "James E . J . Bottomley" <jejb@linux.ibm.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, open-iscsi@googlegroups.com, 
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linfeilong@huawei.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: haowenchao22@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=jIhzROlI;       spf=pass
 (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::634
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

On Fri, Aug 12, 2022 at 12:06 PM Mike Christie
<michael.christie@oracle.com> wrote:
>
> On 8/1/22 10:47 PM, Wenchao Hao wrote:
> > I found an issue that kernel would send ISCSI_KEVENT_UNBIND_SESSION
> > for multiple times which should be fixed.
> >
> > This patch introduce target_state in iscsi_cls_session to make
> > sure session would send only one ISCSI_KEVENT_UNBIND_SESSION.
> >
> > But this would break issue fixed in commit 13e60d3ba287 ("scsi: iscsi:
> > Report unbind session event when the target has been removed"). The issue
> > is iscsid died for any reason after it send unbind session to kernel, once
> > iscsid restart again, it loss kernel's ISCSI_KEVENT_UNBIND_SESSION event.
> >
> > Now kernel think iscsi_cls_session has already sent an
> > ISCSI_KEVENT_UNBIND_SESSION event and would not send it any more. Which
> > would cause userspace unable to logout. Actually the session is in
> > invalid state(it's target_id is INVALID), iscsid should not sync this
> > session in it's restart.
> >
> > So we need to check session's target state during iscsid restart,
> > if session is in unbound state, do not sync this session and perform
> > session teardown. It's reasonable because once a session is unbound, we
> > can not recover it any more(mainly because it's target id is INVALID)
> >
>
> I think we are ok now. Do you have a link to the userspace parts so
> I can make sure we have everything covered now?

I updated the PR on github: https://github.com/open-iscsi/open-iscsi/pull/339

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAOptpSPLSbrQ8hgr275Ds7fwcBA_W9jYt0SFfhV-npPaz08S7g%40mail.gmail.com.
