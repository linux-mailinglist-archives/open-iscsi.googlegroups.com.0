Return-Path: <open-iscsi+bncBDH7XCOC4UIRBTFVWSMAMGQEESWSOGQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 883295A5534
	for <lists+open-iscsi@lfdr.de>; Mon, 29 Aug 2022 22:00:15 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id y10-20020a5d914a000000b00688fa7b2252sf5326567ioq.0
        for <lists+open-iscsi@lfdr.de>; Mon, 29 Aug 2022 13:00:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661803214; cv=pass;
        d=google.com; s=arc-20160816;
        b=LFQP4DltP0DehfKhRR15YWLzk3ZPx6DxcAlSvdiNDG8ZhF5KSBNws+F+2mWrOpB9gB
         2dTXzyo4qYFHqrKnV8VTYLO08834wHNpr50V1pcGZw+guGUOvM8ZCd3BA/1RIJz+gWr/
         SALjPkjyDP3iT4uXU6b30VoIoU6fwTw+2VGfrXTKCTc6rhQdJbmFilmCP85bxPGGghWY
         sSgPGRirIeyu8Ny5uXya5YjWTkiWQWUtMVME8CE66h0spOsE9jd0DWMvQwI+2/QWZobE
         WGIW7M6JGvr6aR3Ljydan+mAibFuW/zhs6IxZhahyI+ZL0RgKEFiAI/+dIE9CoPnu+xT
         Y4+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=LQV0c+OerrugjRBa3dRq7SjVXmCq1Va8XZHzOfq+fCY=;
        b=bZWXZf8Lnsa66nwkHVffjFLAqNoFLfHVWg3a46y0gDjozZ5gGXFi7qKEDBnO4Monbi
         qd+OEhEf6gqvbm+OmI8pvYmqOfPg7cTLWoM6dMIDBktOH8Z3cwMAbXRzJdfz3V2C7X9C
         a+GjngsgNKCBFNuO7GHrBs0DD1eH9dPg/IRJApfhZnsSwKaNN03mqLPSQ9pIYJCNbeCc
         MnQ/JV99sI0NYCnRdXFO6PlPwquZ98KiTS+nHHncLjbCsIGXjj/MjIUK1YU3/u5ulxW5
         yxS2s0iyHrhTIyYgsImIRhPCGYEX9HdF4uaLH4qoG98sP2wWdiHmHOcySJBXHucq8YbC
         B97w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@purestorage.com header.s=google header.b=k7gUh5Qe;
       spf=pass (google.com: domain of ushankar@purestorage.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ushankar@purestorage.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=purestorage.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc;
        bh=LQV0c+OerrugjRBa3dRq7SjVXmCq1Va8XZHzOfq+fCY=;
        b=fnwIS8m33RLfqeeybbBYuo1zxxpauJNLlOYT28MZ+2X8+ymO8VbrursDZDGoncyVOo
         im9LkBypThoEGzLw8YPx7CNk6rGOYgDiQc+YpzNRIPvjggiRo58V91yeeaWs/5sgBsyY
         Yno0CA/SyplksgfAh0ZZl91t6MpXowWoYCQn9OkVKviY71+1X1LfjOerj8LBz7TNltVt
         eoYsizBbPyCOjnMV5IFEIoIHMDa1tMgPUx6b9xbwoZcl89A2s9pTKBVXaLla+G8dQ1RP
         loFUKZD5w/WtyV1kOimilxtCewR5lDh/4SGzYqSoz10nnEI03aRZrH9e/UHSpj+MycPM
         9Nng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc;
        bh=LQV0c+OerrugjRBa3dRq7SjVXmCq1Va8XZHzOfq+fCY=;
        b=b+qbXC0GGaBgl33+W2/AcFNKgGas229Au8AgdnA52HqpkDkcfcwtfrl0nU4+DFI9Vv
         mo7dJIzOVZYgZx03XA9Zvn2OZChNs8gBJFsS98EpT8ckzo6uiR4ZWYfNIduT/PDVEzUQ
         i9/PQ7XS+A7sheQfEP7jo18V/2edT0kcWPCrwXFRBNh5qWYVKMlxFLDXPkUCY9Iby/24
         DOseJVyTDWwrRM9EX0tWlXqrsqqXW+AU9vPkxEu2ZEZBaq9Syc0/VaUM79opk2YpIKkq
         t9Co4z7+8o7pD4PV0CxgqZd67yCNKZW8hbdnFD7cIfSvifbI0ULQtGCNNpDkg/HvF8yw
         CRww==
X-Gm-Message-State: ACgBeo2qJ2dB0Y6ht7QM9CThHE+bU87XPVcYrxiMu2iio04kWALFrrg6
	6NLld21wG7cBmpVnpANfWGs=
X-Google-Smtp-Source: AA6agR7ZOEwTqMOejmdaJZBeHvr0EdgUXiOq4jLAC2SoC0tnX5wPx0Tu/pbRupNgxQWzCLB9726fvw==
X-Received: by 2002:a05:6e02:156d:b0:2eb:4ea3:8ee1 with SMTP id k13-20020a056e02156d00b002eb4ea38ee1mr620308ilu.71.1661803214163;
        Mon, 29 Aug 2022 13:00:14 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a02:b092:0:b0:349:e63e:93 with SMTP id v18-20020a02b092000000b00349e63e0093ls2546125jah.9.-pod-prod-gmail;
 Mon, 29 Aug 2022 13:00:12 -0700 (PDT)
X-Received: by 2002:a05:6638:130e:b0:346:8a34:377a with SMTP id r14-20020a056638130e00b003468a34377amr11115713jad.302.1661803212476;
        Mon, 29 Aug 2022 13:00:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661803212; cv=none;
        d=google.com; s=arc-20160816;
        b=i6ac4ZVR6GgBG5HvNIDe/MZQDnA7PonwxygabT9SwnTpuTMhv32K3BDhsxV99KkKe6
         ckU7JY4ikDBgJitnwPLyP8sX8LxdKfTiAEDwFxnCSRbl1wRcZ27J8cwIhVdcfP8axaSr
         4NrmvgiLge5+GSOzlkrYDrQ5i3kNepjDUHpcRpEkRkVQ8cHpsEhOvqF2e/nIB2dcL5xA
         MsDKpztRyXGpoqu7LUpZIgddTS3lO+rPnX31c/w5uUrJ1lxs+TI+S6BMuFrGItvHaiUr
         J3E3fXYuZt233TQ8P1oUQ2wA1fhnaoi89OK9Ngqx5ZiRguqDBG1Np4csYxOPb61gQM0o
         jVhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=s9Nu19rr6wRMxKcz3culk6ybihIZkFy1pWw17Sqf8PU=;
        b=HwyQ5SjMc9pwwZEP0HyvxmYtojXuvjvNeZmXk5+saW8A+Di7a9ds/FBE+XGTIhrWLD
         oPmZ7ludoxmlQ8Zi054CG+smxBgUneB60V279nbtqMdwKnAfDSOvo7YiORo90CGrTqi1
         BNPPTtke82EABuzplyQjOoQdCn737XGPvR21kmIpvoNdSgB92vYpUTb+oDdPEvnFW/76
         lm0DHvK90mgpnG1WIdoydosEI8vSMM7pO1fyz0Phx6WB+ZfzQ8fyNiRJzSbkAlNN/X+b
         E8Lmk71NMMWuiuIBM/v5XwwVDO2iwse5nPwsLiuKuSFFp88bybymXwuWQ/WY29aZ8V3I
         EqFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@purestorage.com header.s=google header.b=k7gUh5Qe;
       spf=pass (google.com: domain of ushankar@purestorage.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ushankar@purestorage.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=purestorage.com
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id m8-20020a5e8d08000000b00684c9b5bc7asi537093ioj.1.2022.08.29.13.00.12
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Aug 2022 13:00:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ushankar@purestorage.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id p185so9224439pfb.13
        for <open-iscsi@googlegroups.com>; Mon, 29 Aug 2022 13:00:12 -0700 (PDT)
X-Received: by 2002:a63:8048:0:b0:42b:1f02:93cd with SMTP id j69-20020a638048000000b0042b1f0293cdmr15170310pgd.499.1661803211747;
        Mon, 29 Aug 2022 13:00:11 -0700 (PDT)
Received: from dev-ushankar.dev.purestorage.com ([2620:125:9007:640:7:70:36:0])
        by smtp.gmail.com with ESMTPSA id i63-20020a636d42000000b0041c0c9c0072sm72353pgc.64.2022.08.29.13.00.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Aug 2022 13:00:11 -0700 (PDT)
Date: Mon, 29 Aug 2022 14:00:08 -0600
From: "'Uday Shankar' via open-iscsi" <open-iscsi@googlegroups.com>
To: Michael Christie <michael.christie@oracle.com>
Cc: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>
Subject: Re: [PATCH] recovery: remove onlining of devices via sysfs
Message-ID: <20220829200008.GA442899@dev-ushankar.dev.purestorage.com>
References: <20220811234028.3848279-1-ushankar@purestorage.com>
 <20220823213226.GA2605053@dev-ushankar.dev.purestorage.com>
 <DM5PR10MB14666AEF8ED8B55B35310917F1739@DM5PR10MB1466.namprd10.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <DM5PR10MB14666AEF8ED8B55B35310917F1739@DM5PR10MB1466.namprd10.prod.outlook.com>
X-Original-Sender: ushankar@purestorage.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@purestorage.com header.s=google header.b=k7gUh5Qe;       spf=pass
 (google.com: domain of ushankar@purestorage.com designates
 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ushankar@purestorage.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=purestorage.com
X-Original-From: Uday Shankar <ushankar@purestorage.com>
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

> I hit the hang below and it should be fixed in this set:
> 
> https://lore.kernel.org/all/20211105221048.6541-1-michael.christie@oracle.com/

I hit the hang I described while running a kernel with your fix in. My
hang does not involve scsi-eh; it happens when a transport error is
detected by the kernel while iscsid is in the process of handling a
previous transport error. If the second transport error happens at an
unlucky timing (after iscsid does start_conn when handling the first
error, but before it sets the device state to running via sysfs), the
device queues can be quiesced (in the block layer sense) when iscsid
writes to sysfs and ends up in scsi_rescan_device.

I wanted to avoid this by just removing the write to sysfs from iscsid,
but it seems that interferes with scsi-eh flow:

> The user space online code in your patch handles the scsi-eh case.

So I will need to try another approach. Simply adding a call to
scsi_start_queue like so

if (rescan_dev) {
	/* ...
	 */
+	scsi_start_queue(sdev);
	blk_mq_run_hw_queues(sdev->request_queue, true);
	scsi_rescan_device(dev);
}

does not fix the issue either, since your linked patch moves the
run_hw_queues and rescan calls out of the area protected by state_mutex.
A race window still exists where the kernel could detect the second
transport error and quiesce sdev's request queue after we unquiesce it
but before we run the queues and rescan the device above.

It seems that the most straightforward way to fix my issue without
undoing your patch is to add another sync primitive that guards the sdev
queue quiesced/unquiesced state so that we can guarantee the queues are
unquiesced when we do the rescan above. Unless you have other
suggestions, I'll try that approach.

Thanks,
Uday

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220829200008.GA442899%40dev-ushankar.dev.purestorage.com.
