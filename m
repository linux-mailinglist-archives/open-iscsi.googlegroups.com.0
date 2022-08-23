Return-Path: <open-iscsi+bncBDH7XCOC4UIRB34OSWMAMGQED573I5I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id A2AAD59EE3E
	for <lists+open-iscsi@lfdr.de>; Tue, 23 Aug 2022 23:32:34 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id h3-20020a9d6f83000000b00638d0574905sf5145543otq.4
        for <lists+open-iscsi@lfdr.de>; Tue, 23 Aug 2022 14:32:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661290353; cv=pass;
        d=google.com; s=arc-20160816;
        b=OhZenlemYZIKPTMzJNfufkOLGe9z2nh92NFu+gauX4scFpjR1hGzRFAR27XCLGU9Jm
         Y+wu9v+Hy9DdtGGXYr1qgRD+nVoN55TnknB/7RoIqhPuHGYr1Dho6mXc9G/e2DV07XQL
         sjhnZcnvSCbQsVVMOwjH5mxGEfUd82a4+pCR6wf42Jc8nwiiN2Xa1dq8y52RzoEj1bCc
         lWnfDzZe8xKUWUR0Ix1SaUqlCGFsWtIdFOlmJxvLsjAOMG5Ii4eJXxn6UR18NScfFQdy
         n35k/SJut6GxmTEiNxWCtMAGHG2UhydoBOKFEWIWMMr7avqEhbjGhuuncUoJE6hg0A6O
         tNJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ijnxQubP50FEe1A/ewp6lYnkRqMbSSZLUTMF1rmxe6A=;
        b=oH1cRe0PwFJuUg2f38r5QtXPbJR270r0heQaBQ+7vm5kfqJRT6kQmLUVQ9QRaPmmqY
         v/Zdsct+vOJak1x6xu7Uo87PE5HLrQzwTCjTJKqPuowEpQUDNj/MtkxP9fRAK3jCTr9o
         /1TRgN8KBeQe8sEidM2M+WestOeLK+DO4cpYS9Cn5nZIjYN2eEe1ZUVn2MWbiYkOlZSV
         P710YfLPbdJuL3gq9AUoMqjWQRfwDjEuOG8i6DhxlyGp9ZIWV+I9SKj2k3SOZTTym1hF
         Ym9blnZXO88ljkDnkmwN0G6xbuITslapNHXq++kLmlkaEbeDRgK1XzpsUsznq1MIOcZZ
         eMUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@purestorage.com header.s=google header.b=SmDrZYTr;
       spf=pass (google.com: domain of ushankar@purestorage.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ushankar@purestorage.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=purestorage.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc;
        bh=ijnxQubP50FEe1A/ewp6lYnkRqMbSSZLUTMF1rmxe6A=;
        b=tMtBtWU+pZq8LAjHBo6FliU7Y9V6gHgbW2Bfgg4nLaa9wWHs8JSodQPS3TvJD+2fv8
         Gemm2qyNN0GvqtKsMXaH+sLD5xr7GnlDKURA/ZgLEg5atDDG27dNcrboQmlz2ws5AIrw
         oUCC/hzs8K2qK8w4n/cRrs5VlW4fxpFPyzu/XabQAkXYgpOcbALqWp2vi/OV//hHgb6U
         QPXmj8NUCdLGaW8M+c2nFZGmD7ASO1h+5qykTGM4MwWsu59DSiPDdu2emSwc/PGDtILu
         gM7zo907NhrPKgwvPT4OqVXTfQPtzjPazxfX5R7VSEhOc2MLzsFvyBHeNT/ZJZpNYaej
         OGyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc;
        bh=ijnxQubP50FEe1A/ewp6lYnkRqMbSSZLUTMF1rmxe6A=;
        b=XwE4hPVEwgDIhdQImoCBiP6sHErwbhsqif5BzefGLspDe+yTQCIaEQZnH4fYuohTUk
         xPdKsjvv6hVn5uFSrhoXo2wLKvDDfRNoH/vbIVUkHxKF2HXzEDAow5cJYhJmENU/vnMQ
         lEJQvFdphZDXN2ObsKiSt+938bIskoFve2kHqSa4Dsxt+2chSU3pNYdhXLNHSCBb/eHb
         10f5+Af0fvZuzurW0q5cnrMVGC41xUFshUxRPzyxLarjJt7FvUaCs0hGTlVk7/8a/gK2
         L0mlCiuhGBSKq2Uf5yb28rpUiO64mLb6kw4O5QkEGz8R3oA+unN4MOylp4BuhWOi3UCZ
         910w==
X-Gm-Message-State: ACgBeo00L2zwSUO90vfe0soZJKOi0Qw6bo7lyEAA5HHePWpnRyv6b7IY
	B0uHGNmQ2KC0aXam2rtLfsU=
X-Google-Smtp-Source: AA6agR7oz1o9jUw/ZV1HtpBYsYizhQtoUrt7kBrqUXlcJIl4Ma6n/faNGd6fgdHQzxDTj1ywWeEteQ==
X-Received: by 2002:a05:6808:14cc:b0:343:5b8f:d103 with SMTP id f12-20020a05680814cc00b003435b8fd103mr2271061oiw.125.1661290352946;
        Tue, 23 Aug 2022 14:32:32 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:6f8e:0:b0:636:db86:62f8 with SMTP id h14-20020a9d6f8e000000b00636db8662f8ls2361177otq.5.-pod-prod-gmail;
 Tue, 23 Aug 2022 14:32:31 -0700 (PDT)
X-Received: by 2002:a9d:74d3:0:b0:637:96f:6478 with SMTP id a19-20020a9d74d3000000b00637096f6478mr10086286otl.76.1661290351186;
        Tue, 23 Aug 2022 14:32:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661290351; cv=none;
        d=google.com; s=arc-20160816;
        b=qK5saWr8H8/oOMVdu9qj/awgJ3TA/k994dVjzm1Gf97qbyeHiAMV7GiYR0b50I8h4a
         0g4PPJPwHgahbg5qY7SKgQ6tndVRAYU2tv8njws1dzev73qe80sfXdY8GFYE8zVDR+Fi
         jKXq4wgEq1v1L3xCcrq2h1nkg+Kh26tsn++yy9qZTl8ycfQvW5SRhv1AcUeDqrGeuwUq
         WiFbr+bWHwf1XEOHsvy7T63+CVyMxUHv0xUmqRTNKTiEHyWD3JpaJ7kAvYqhehVU3N2q
         lhd2TQwq1sSiM9AbFpzHqEEGuh8DDcThcr2HxlnRiCXriPf6vDKphpwohdhCCUJfhm5o
         sh4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yL3EUYtSNbabqWwjUf1HIIyTYqIAscUGWnmaaOi2xQA=;
        b=j+PR5ypOsmPt+rdyUwIfGfrc/fmwPvUHrdrlzGQ7OfvKGud9kHTWxxH82fKUOmMUCe
         vqrWQdKPNKM58bd1Gize3cZUqKVwDpxghdUNIrLFpm0B62FDOCVZudqPs+30senB8f77
         W5cY7er8Wa++Y/Bm5Y/MGR+VcjAPDlCQ2rUCfS4juhZKyA3rCneMRlYQQqM0zO643Gqv
         Hpw5pAgSFHbUCvJ3gLuem9JP9W0ewYEjFyAkZY/v01TFSTcMipkkthQ6wI+KIwGx5PiU
         xbQK2YSolupIPV6+Cxl11iO3t/jrukOpaOfvtvyIjAl2QywQipxniIcKCf+HfJOU40XL
         WpcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@purestorage.com header.s=google header.b=SmDrZYTr;
       spf=pass (google.com: domain of ushankar@purestorage.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ushankar@purestorage.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=purestorage.com
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id w202-20020acaadd3000000b00344d0712829si39651oie.5.2022.08.23.14.32.31
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 14:32:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ushankar@purestorage.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Received: by mail-pg1-x52b.google.com with SMTP id 12so13358757pga.1
        for <open-iscsi@googlegroups.com>; Tue, 23 Aug 2022 14:32:31 -0700 (PDT)
X-Received: by 2002:aa7:888f:0:b0:536:fefd:e5d1 with SMTP id z15-20020aa7888f000000b00536fefde5d1mr4420908pfe.69.1661290350027;
        Tue, 23 Aug 2022 14:32:30 -0700 (PDT)
Received: from dev-ushankar.dev.purestorage.com ([2620:125:9007:640:7:70:36:0])
        by smtp.gmail.com with ESMTPSA id d5-20020a170903230500b00172ccb3f4ebsm7823402plh.160.2022.08.23.14.32.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 14:32:29 -0700 (PDT)
Date: Tue, 23 Aug 2022 15:32:26 -0600
From: "'Uday Shankar' via open-iscsi" <open-iscsi@googlegroups.com>
To: open-iscsi@googlegroups.com
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>
Subject: Re: [PATCH] recovery: remove onlining of devices via sysfs
Message-ID: <20220823213226.GA2605053@dev-ushankar.dev.purestorage.com>
References: <20220811234028.3848279-1-ushankar@purestorage.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220811234028.3848279-1-ushankar@purestorage.com>
X-Original-Sender: ushankar@purestorage.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@purestorage.com header.s=google header.b=SmDrZYTr;       spf=pass
 (google.com: domain of ushankar@purestorage.com designates
 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ushankar@purestorage.com;
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

Bump and CC maintainers.

On Thu, Aug 11, 2022 at 05:40:30PM -0600, Uday Shankar wrote:
> In setup_full_feature_phase, iscsid calls into the kernel via
> start_conn, then sets all the relevant device states to "running" via
> session_online_devs. This second step is redundant since start_conn will
> set the device states to running. Moreover, it can cause tasks to hang
> forever: between start_conn and session_online_devs, the kernel could
> detect another conn error and block the session again, which quiesces
> the device queues. Setting the device state to "running" via sysfs kicks
> off a rescan, and if the device queue is quiesced, the rescan will hang.
> The iscsid kernel stacktrace looks like the following:
> 
> [<0>] blk_execute_rq+0x11c/0x170
> [<0>] __scsi_execute+0x108/0x270
> [<0>] scsi_vpd_inquiry+0x6d/0xc0
> [<0>] scsi_get_vpd_size+0x33/0x70
> [<0>] scsi_get_vpd_buf+0x25/0xb0
> [<0>] scsi_attach_vpd+0x33/0x1a0
> [<0>] scsi_rescan_device+0x2a/0x90
> [<0>] store_state_field+0x1b0/0x250
> [<0>] kernfs_fop_write_iter+0x130/0x1c0
> [<0>] new_sync_write+0x10c/0x190
> [<0>] vfs_write+0x218/0x2a0
> [<0>] ksys_write+0x59/0xd0
> [<0>] do_syscall_64+0x3a/0x80
> [<0>] entry_SYSCALL_64_after_hwframe+0x46/0xb0
> 
> Since iscsid is responsible for recovery from the second conn error but
> it is stuck, the relevant device queues will remain quiesced forever.
> Tasks attempting I/O on these queues will thus also get stuck.
> 
> For these two reasons, remove the call to session_online_devs in
> setup_full_feature_phase.
> 
> Signed-off-by: Uday Shankar <ushankar@purestorage.com>
> ---
>  usr/initiator.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/usr/initiator.c b/usr/initiator.c
> index 56bf38b..6cbdcba 100644
> --- a/usr/initiator.c
> +++ b/usr/initiator.c
> @@ -1068,7 +1068,6 @@ setup_full_feature_phase(iscsi_conn_t *conn)
>  	} else {
>  		session->notify_qtask = NULL;
>  
> -		session_online_devs(session->hostno, session->id);
>  		mgmt_ipc_write_rsp(c->qtask, ISCSI_SUCCESS);
>  		log_warning("connection%d:%d is operational after recovery "
>  			    "(%d attempts)", session->id, conn->id,
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220823213226.GA2605053%40dev-ushankar.dev.purestorage.com.
