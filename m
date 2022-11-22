Return-Path: <open-iscsi+bncBDRZ7N5GYAFBB44N6SNQMGQE64D5N7Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF50634270
	for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 18:29:26 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id s1-20020a197701000000b004a2aebd8b14sf5830938lfc.21
        for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 09:29:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669138166; cv=pass;
        d=google.com; s=arc-20160816;
        b=i6m1A1fd/XDmCdDaLfr6kv2CHFs+UHCPhMhTonJwaTewJ7+Q20dbGRQMmUqJ0tMlTR
         kd+Gze4dqV8C00A8zE7VHEfmtLI38eW2F6PokRxd6DawE+euNhXtzcW7mjU7BVYHqUpj
         8UGOZBB7kkNggVG7xEdbmvmZMd0fwnmYcJR/5ZwXObPRuTmlkzVeBSj7sO84JCoY4HIW
         OjGlV4bDxNd0BeThiifFt+AuPiWP1YGT9HfPl5k+IvHQwW8+hHxXFetZaa9BYebEtDH0
         djmEY4Hp6AA7ExSSa7oZcq81aGvGi93py7PF4Nty/eGd6gIEpXoXqL4n/kG4+9xSghDS
         60ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=s0zGRfvUkrThpwojiWQqXT04IG1SGfm2Xc7NaD7Ob7s=;
        b=oFZ7hz84OUHgd7oJYRQ/Ss4SEfqmwskzJ5TQiW79Ug2fAZLHsIlkM6GgVROuCkMtv4
         z0Flx5TVPAwwMW7lXNxeuaWUxmqMExGH82+n6ohGJNpeWccwwOsQzgrVyYiFEMV9NVzG
         cQ8jE89pGHsG2Z1vRoEwt6cNN2OhT9CiyDIr5PcM7gG6Pm/CXQhloYiDoEk2DL95auXK
         X6Kil084n/ARIGpVn/TcCavb9fd9wcmeiMwK+bJYI32i3bE+4q546M0ezNabNT+Z1FMZ
         9D0eCChnWbkmuc0NfZmz1blbzfqog+KW3rZzGfK+5HrDq0ToI7WUORqMdF42aKFod3Gy
         4Fxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=W69sl1td;
       spf=pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s0zGRfvUkrThpwojiWQqXT04IG1SGfm2Xc7NaD7Ob7s=;
        b=qOL39iJIpYGNAt9dYGOcFpPSWlPDulWVDm1GEokqTulM7vVZPMrOiv5Pu1ktQmULOc
         ekVJT+LOs5GyWpiPOGAav1VW3TGCrYh+qaM7k3+31sT5Raf+X1m0UY/cCsRtZaLSO5ic
         lnAbcKEsuuy5X0w5Rk3Ha1+bG5x9qlDqoz2RUj6epNC7M1Lf1y3I03msJiYGCtsmhtV2
         v3T+GydQA7bc/T3ajsMJExLqWZU9mHnhadbmkOFLjQUXHMAZ4tMVak03/WYl83CzUoCZ
         YfWTVjvYLKb1+NRuuZNEyLAoWtOSEUbxifH9J7it1/Bgr8vlJXssIDFmKlc8JshGqB8W
         1kqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s0zGRfvUkrThpwojiWQqXT04IG1SGfm2Xc7NaD7Ob7s=;
        b=kPChZQnkGdfoudf+div4KWhjHQNmjHtDFr6/Vea0Yw1BqV7JjlQlARSY8DKx6dZyfh
         i0LIKCmeAdHUctPD/7LGL5sBvWmZgeDC3L2ELLL7U8s/gfa52gUw6dJ6qDAuPVhPIv0v
         LJXhT7JIjK7DT8b9K//9i/stnzHOAR+uSvxSzip/KzQ8fqD2zKH0qM6GX7P5ghj0pcNk
         hTO1OM1XANJTzQ0gtRq+U5SQ/WVY674qzoKPKUVsByWFDXk2ob0K/svsLMoMljrKexsM
         Vx/NXBTfSuGU3pGWsG0ZZBslfX3aNXiUxnI6eYSDzgPpYblhoplpIp49O6oSNhsTRleA
         8kpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s0zGRfvUkrThpwojiWQqXT04IG1SGfm2Xc7NaD7Ob7s=;
        b=zFTVG9Cwtc/d9/8GjZDIqj/TdKA3CWn2nC/yL1hLLr0ccD37AW4LK/yCDZqbYMcbWi
         PGWS0vBUohuLd+8isXRHehoeb9IYVZ92M3cnELpFfcTXjMd2cvCHH6uChyYbHa1YoLag
         k92ff7PmHT2cJSrH03DZqvXzbuI5f5TlBpiNyZqckqy2xIzW2U3RWoeF4Z2z+c3StxJO
         GFtMYdXmG99BJynbdmZBgEj9sKZMwxJxiD699IsvaPfP/MJCWQRLM4X7oIpT+HyVZnvn
         DUMuU0/rzT3/6zJ2sd4h2OouUaCtB/lgXGcFSQzoCY7Ro6A4ywLoogL0Cud46r84nS8z
         hZUA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pk1lqmDKcJy0Xwe5pqI/Y+fu6Exa+1mCcOXAomRY9SWFTflois/
	o46wmQp8Ztd1wCgsDRipLRU=
X-Google-Smtp-Source: AA0mqf4tajZbRuXhLp0YavQ26P3p1p/knFNUauAxacw12iA1E4FFK3YNz7GgtCF0v42ntog++bE/jg==
X-Received: by 2002:a05:651c:1308:b0:26b:de20:ba89 with SMTP id u8-20020a05651c130800b0026bde20ba89mr7690380lja.254.1669138165962;
        Tue, 22 Nov 2022 09:29:25 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:a54a:0:b0:26e:76e9:3567 with SMTP id e10-20020a2ea54a000000b0026e76e93567ls2568210ljn.11.-pod-prod-gmail;
 Tue, 22 Nov 2022 09:29:23 -0800 (PST)
X-Received: by 2002:a2e:c52:0:b0:277:9bf:9411 with SMTP id o18-20020a2e0c52000000b0027709bf9411mr1844376ljd.504.1669138162982;
        Tue, 22 Nov 2022 09:29:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669138162; cv=none;
        d=google.com; s=arc-20160816;
        b=fgU4OJCIT4aRYtK+L2/TQ3Q2QdWGaV3wR1GaYLiCI9/D++aWwnw2pH6QmrHSJcsRlG
         TOqoflhABCTmuSO+FX3GZfDg48wQpMdyDrQB7UqN8aoH7Na9jBSWpxbrGw7dqEOF7k7n
         +X2Y7Ao4hd6wXdRfAusN9ZVmoj1XEpitIGqUoI5fhFSI7pW+FxOSbr1AG0H8eQrh/IGA
         uueDivQ3Cn5b26jnRj2tYj6AgghCqTMLgxXTgt1NWgLgxG/K10QjfogOmowE0CwT5AcC
         p2YYqGljM8IgD4KbBAj1LqokiLBpjhNoIoTrbbz7olfflxymrylvKG8mVbvO0oPvtgP0
         Ewzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g60GIv7bqoFLDqB4xsxYyMezGWJmQQ9+7qMuSM+/H/0=;
        b=MvT8XmoPYR2RR01bQRA0GllM1yYS6I14HnzqmsDplgcAYHtGJb+trNc0FXZ3Mk5H6k
         n68Y/u3DLHx8RddakqY0eeiYGqCDIXUAK2PCQKoGQu+WD25vUvKh0l7RHWZnCMfl5bKE
         ZeFuTB5mZwdjAcliw2MI/58Q2jzliJpcZU0CODT+JLoMN7bvgdLapxCSkZgXOG8OQgNM
         qzTTV9swgE9N5/7FH9Oin2/7r5z7SU2p83o/4mc/6cmVrjekkpLDtXE1XMyjvjvZZLOV
         N07LyKxgHkk2Vle+BOkKwPNaXdVMUTbAck01PE/263DGKr7SOYPXlr9GCUeDG1MP7Wt/
         oJlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=W69sl1td;
       spf=pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id f16-20020a05651c02d000b0027760dd5b20si576916ljo.3.2022.11.22.09.29.22
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 09:29:22 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Received: by mail-ej1-x62c.google.com with SMTP id kt23so37362415ejc.7
        for <open-iscsi@googlegroups.com>; Tue, 22 Nov 2022 09:29:22 -0800 (PST)
X-Received: by 2002:a17:906:44a:b0:7ae:e67c:6c4c with SMTP id
 e10-20020a170906044a00b007aee67c6c4cmr19861350eja.375.1669138162627; Tue, 22
 Nov 2022 09:29:22 -0800 (PST)
MIME-Version: 1.0
References: <20221108014414.3510940-1-haowenchao@huawei.com>
 <ad54a5dc-b18f-e0e6-4391-1214e5729562@oracle.com> <89692b2b-90f7-e8e8-fa77-f14dbe996b72@huawei.com>
 <418c7f6f-0bc3-45bb-2abf-e866df6f4b62@oracle.com>
In-Reply-To: <418c7f6f-0bc3-45bb-2abf-e866df6f4b62@oracle.com>
From: Wenchao Hao <haowenchao22@gmail.com>
Date: Wed, 23 Nov 2022 01:29:10 +0800
Message-ID: <CAOptpSO6=sUPUwgj1og8088djiNA=Bw9um0p024L=0Gb=-ja5w@mail.gmail.com>
Subject: Re: [PATCH v6] scsi:iscsi: Fix multiple iscsi session unbind event
 sent to userspace
To: Mike Christie <michael.christie@oracle.com>
Cc: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>, 
	Chris Leech <cleech@redhat.com>, "Martin K . Petersen" <martin.petersen@oracle.com>, 
	"James E . J . Bottomley" <jejb@linux.ibm.com>, open-iscsi@googlegroups.com, 
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linfeilong@huawei.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: haowenchao22@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=W69sl1td;       spf=pass
 (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::62c
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

On Wed, Nov 23, 2022 at 1:04 AM Mike Christie
<michael.christie@oracle.com> wrote:
>
> On 11/21/22 8:17 AM, Wenchao Hao wrote:
> > And the function looks like following after change:
> >
> > static void __iscsi_unbind_session(struct work_struct *work)
> > {
> >       struct iscsi_cls_session *session =
> >                       container_of(work, struct iscsi_cls_session,
> >                                    unbind_work);
> >       struct Scsi_Host *shost = iscsi_session_to_shost(session);
> >       struct iscsi_cls_host *ihost = shost->shost_data;
> >       unsigned long flags;
> >       unsigned int target_id;
> >
> >       ISCSI_DBG_TRANS_SESSION(session, "Unbinding session\n");
> >
> >       /* Prevent new scans and make sure scanning is not in progress */
> >       mutex_lock(&ihost->mutex);
> >       spin_lock_irqsave(&session->lock, flags);
> >       if (session->target_state != ISCSI_SESSION_TARGET_SCANNED) {
>
> What was the reason for not checking for ALLOCATED and freeing the ida
> in that case?
>

target_state would be in "ALLOCATED" state if iscsid died after add
session successfully.
When iscsid restarted, if the session's target_state is "ALLOCATED",
it should scan
the session and the target_state would switch to "SCANNED".

So I think we would not call in __iscsi_unbind_session() with
session's target_state
is ALLOCATED.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAOptpSO6%3DsUPUwgj1og8088djiNA%3DBw9um0p024L%3D0Gb%3D-ja5w%40mail.gmail.com.
