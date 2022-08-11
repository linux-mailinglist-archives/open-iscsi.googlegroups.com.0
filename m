Return-Path: <open-iscsi+bncBDH7XCOC4UIRBE5I22LQMGQETXKJF2I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 76697590943
	for <lists+open-iscsi@lfdr.de>; Fri, 12 Aug 2022 01:43:18 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id 190-20020a2503c7000000b0067d8d7f2db3sf4052060ybd.19
        for <lists+open-iscsi@lfdr.de>; Thu, 11 Aug 2022 16:43:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660261397; cv=pass;
        d=google.com; s=arc-20160816;
        b=qd7y/x3IBzZ/lGbZMrgMOke2Pk9F3V+VTezYEiWkOLC5d/XxkaQ++1QtfQuvabeWuy
         8vGJqvct+EfNXIjYlNt7TIlRwVLUF/0qYR3MThhOq28u3k0zvK6T5/RObjlc7EYNvHEQ
         cQeICnWHfU4yB4kzRN++wUMgEaMn2COmyKX68AntV/ni7+AMAz7a+rXUR1+ZCOuXHQ5u
         EpPxrrX0uxGD9B7fPFGycJj1n4r472KJvdPYk5grbO29Qg0RSO0XuJk3JfrTp0aIUhOY
         lZ8QNcL11TPiYZnMu6at5CW5The38/1JtGzqpubPmX0y3rBv5a5x5XYw0hI/0bPwTyQA
         xAmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=iuNdfqRMrfPwkupfXjbbQe8yyD1gPp0PVK2To2P/RqA=;
        b=m//oVQ7c1Ao3gglX7ANeOoZc01gggMH3EMaffA/de8fDfk6spElFtrUywV4+JsQUru
         xOHBPvJEoAdMO2qV47qZLFo93jTOgDaU5iE+i6din3vcGIzxDUqJ4wn26Zp7gzA+YfRn
         Zk+uoi2TJYgWsZtXjA9xiUGQ2TZO6/lGfiel2EAu3rzFd029lZPtfbyuLLEpTT+NwlLK
         FjDjMPhiyxkiO9n2pzD9cO94mRho8JDnvm00LSEfQpuZS08fxNOWVW3ajqSdfk9DdjRF
         PNTMiZQBplTjJwsUvQrusaNUN1CYI5qD/jqe+lZ8s3MmCibSuM8kSe/c23oJwW6XXmCA
         /I6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@purestorage.com header.s=google header.b=ariJYsth;
       spf=pass (google.com: domain of ushankar@purestorage.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=ushankar@purestorage.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=purestorage.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=iuNdfqRMrfPwkupfXjbbQe8yyD1gPp0PVK2To2P/RqA=;
        b=MaW/b6gLIxdiL3nN2VtWwo2qVye0585e3Y+WRKIuMABFxYDkbPtNlbrzgn3GPwM619
         UmLRrNdIAEoIomaObvHnB5CZfJWhBAlIjA4zZRJOj15Xla/bDkGOVqsHDH2BZxd7G1g3
         EQnQPoPcsI8muDSCCi76ti/EI3sCsXgAlKZTcMQaCiX69MaAmqkQXWSpbt3XIOJ64cN+
         DJS8UYN1lWu3adKhhHVnUdoF8yi8im3teoGlVg8Gk3PD941bTZ/ymIEyEmA7FmYYvOpX
         ++OU5UnAasf4QhUJ8rjV0WKbnXg9mj23nBw9wIpc/PMgjEQjQNH/m3jElpRRbud8jjK3
         vF1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=iuNdfqRMrfPwkupfXjbbQe8yyD1gPp0PVK2To2P/RqA=;
        b=UpCr3lF7S/unz+JlUfN6Pl4T1OU49xpLFwSsVWD8Lb+UhxGKvEQi6WJAfcJQ107JGT
         zzFNgcj4FTukOXUtzTLppHe70dibdAS77R0wNejk3PAmZwYYHZ1z+/eqi5Tvl277XY0y
         3Sy+7quyO+lm2IbaEyuyGx67dwwvLqOcdpQpaCBqX/cwKRi1MhTtTfHH2TxW27MwWIJV
         a34a1eppde++dt3fO4xs0h7bmmJ1pZ0R9nCqTbzD6BkYi6OWykrfaCOsK96fLFA6hgsP
         MTMIrNWzc5wBSYMAnv8kr19Ujco8LfxiOK8wfXGueCBKhtfkkE0q032GeoBGKBFFdlZu
         koWA==
X-Gm-Message-State: ACgBeo1ITs9k2DkpY5ohFGSMbxffI5ZDbyfyMjzbzBscQWNMnOTjW1Lo
	sNxV/MWvProa+7rXa+2dLvU=
X-Google-Smtp-Source: AA6agR6H8D+hYp6Zt/+qNER6jpnILxpkLqhNZnmESs6MW/XAkQ97PTFW2ym0LvdpN9Z1ba2QY3YE1g==
X-Received: by 2002:a25:4195:0:b0:67b:73e1:82c with SMTP id o143-20020a254195000000b0067b73e1082cmr1528231yba.599.1660261397137;
        Thu, 11 Aug 2022 16:43:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:c589:0:b0:672:fa20:e8f3 with SMTP id v131-20020a25c589000000b00672fa20e8f3ls1959699ybe.9.-pod-prod-gmail;
 Thu, 11 Aug 2022 16:43:15 -0700 (PDT)
X-Received: by 2002:a25:aa74:0:b0:677:280:4cf5 with SMTP id s107-20020a25aa74000000b0067702804cf5mr1524854ybi.400.1660261395413;
        Thu, 11 Aug 2022 16:43:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660261395; cv=none;
        d=google.com; s=arc-20160816;
        b=nlBX8GWHQ12xE2cG8YaYEKSBtjVb+HWB3kVcTajV8ifMf6ymXxp0wsIXG4cvtWI0H4
         lggmdm/3t3C2eCNYCSOTbaK70nLut2nbFPBOMah7v0Tp2xP6I0kd6qmbr3HuALzSkZNQ
         PyRwy4wsU10gyZ0h5sdmsWLU1f70dftpGaCrWz9tAvCOSWoqlF6KVukg+4OgDKharHYw
         Ix7rHvpXz/jSAdfzxAqQLz5z2apu1rPOezcXOowbBELPDag24e2svIYZQeOzogAtc+3v
         GpjHCWCHLIuu6/ZVh/rSwWstYbu8ziZAhcNnG7BDZwjwT9S7aR07wk8RXHD8VbIDwNqM
         Hy+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=C/qebmxkyw9eP11TJEWDD1xPFEKBmqJvPhTqcZ/Npjo=;
        b=CJzZPXBic4LIbAc7PK6c+nazI98cl5X+uYiQLJoAnpyULg0mkv5lLQMVZm7zoZU0U+
         9fjEqJx3/4hoCsHHIXPFbNyGaGfCp47DZiC1XXvnwi7iEnkCFZnArFYFLjHH4YODCbw+
         4plSgxul1ZCwf4T+yMmhhgHnbFTpekBgc6XNdLQXenqikl+rfH7+yhpwqAW+c0f5L26Z
         ZKC7w7yWlniQTGNfu+CYUrq+GdsvqNQrLctaeppNoVG15XU1AeyPd8HawIRQyJ0ecXvc
         Fxwb3W/EFWxZ6mjqfFjB4tRz3RtnsruW3DqugGNz87RFYeFdSzNgTbgVzd8ql//TOZqZ
         2wgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@purestorage.com header.s=google header.b=ariJYsth;
       spf=pass (google.com: domain of ushankar@purestorage.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=ushankar@purestorage.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=purestorage.com
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id bf12-20020a05690c028c00b0032e923f3f95si53729ywb.2.2022.08.11.16.43.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Aug 2022 16:43:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ushankar@purestorage.com designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id h21-20020a17090aa89500b001f31a61b91dso6806949pjq.4
        for <open-iscsi@googlegroups.com>; Thu, 11 Aug 2022 16:43:15 -0700 (PDT)
X-Received: by 2002:a17:902:e549:b0:16d:d024:2de2 with SMTP id n9-20020a170902e54900b0016dd0242de2mr1408804plf.66.1660261394202;
        Thu, 11 Aug 2022 16:43:14 -0700 (PDT)
Received: from localhost ([2620:125:9007:640:7:70:36:0])
        by smtp.gmail.com with ESMTPSA id l7-20020a170903120700b001709e3c750dsm225377plh.194.2022.08.11.16.43.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Aug 2022 16:43:13 -0700 (PDT)
From: "'Uday Shankar' via open-iscsi" <open-iscsi@googlegroups.com>
To: open-iscsi@googlegroups.com
Cc: Uday Shankar <ushankar@purestorage.com>
Subject: [PATCH] recovery: remove onlining of devices via sysfs
Date: Thu, 11 Aug 2022 17:40:30 -0600
Message-Id: <20220811234028.3848279-1-ushankar@purestorage.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: ushankar@purestorage.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@purestorage.com header.s=google header.b=ariJYsth;       spf=pass
 (google.com: domain of ushankar@purestorage.com designates
 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=ushankar@purestorage.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=purestorage.com
X-Original-From: Uday Shankar <ushankar@purestorage.com>
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
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

In setup_full_feature_phase, iscsid calls into the kernel via
start_conn, then sets all the relevant device states to "running" via
session_online_devs. This second step is redundant since start_conn will
set the device states to running. Moreover, it can cause tasks to hang
forever: between start_conn and session_online_devs, the kernel could
detect another conn error and block the session again, which quiesces
the device queues. Setting the device state to "running" via sysfs kicks
off a rescan, and if the device queue is quiesced, the rescan will hang.
The iscsid kernel stacktrace looks like the following:

[<0>] blk_execute_rq+0x11c/0x170
[<0>] __scsi_execute+0x108/0x270
[<0>] scsi_vpd_inquiry+0x6d/0xc0
[<0>] scsi_get_vpd_size+0x33/0x70
[<0>] scsi_get_vpd_buf+0x25/0xb0
[<0>] scsi_attach_vpd+0x33/0x1a0
[<0>] scsi_rescan_device+0x2a/0x90
[<0>] store_state_field+0x1b0/0x250
[<0>] kernfs_fop_write_iter+0x130/0x1c0
[<0>] new_sync_write+0x10c/0x190
[<0>] vfs_write+0x218/0x2a0
[<0>] ksys_write+0x59/0xd0
[<0>] do_syscall_64+0x3a/0x80
[<0>] entry_SYSCALL_64_after_hwframe+0x46/0xb0

Since iscsid is responsible for recovery from the second conn error but
it is stuck, the relevant device queues will remain quiesced forever.
Tasks attempting I/O on these queues will thus also get stuck.

For these two reasons, remove the call to session_online_devs in
setup_full_feature_phase.

Signed-off-by: Uday Shankar <ushankar@purestorage.com>
---
 usr/initiator.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/usr/initiator.c b/usr/initiator.c
index 56bf38b..6cbdcba 100644
--- a/usr/initiator.c
+++ b/usr/initiator.c
@@ -1068,7 +1068,6 @@ setup_full_feature_phase(iscsi_conn_t *conn)
 	} else {
 		session->notify_qtask = NULL;
 
-		session_online_devs(session->hostno, session->id);
 		mgmt_ipc_write_rsp(c->qtask, ISCSI_SUCCESS);
 		log_warning("connection%d:%d is operational after recovery "
 			    "(%d attempts)", session->id, conn->id,
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220811234028.3848279-1-ushankar%40purestorage.com.
