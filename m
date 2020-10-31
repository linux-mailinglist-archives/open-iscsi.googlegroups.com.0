Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB6PL636AKGQES6GWIEA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CF82A1A39
	for <lists+open-iscsi@lfdr.de>; Sat, 31 Oct 2020 20:07:39 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id t15sf1184169pja.7
        for <lists+open-iscsi@lfdr.de>; Sat, 31 Oct 2020 12:07:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604171258; cv=pass;
        d=google.com; s=arc-20160816;
        b=XFHrhWUDIkRfHCFAovKWK5cFOXLcXxA8sYL2rNxqov68LIMw1l2HpHpRbUYYgITMeU
         P1UibgPl5EB7us8b/8Pf72E3coPVq93qOe/zJ3zJU0H688lSJxpjhMVJLyJVlYMfJo+u
         +l5UTsUGHdBsyGiu6uoLO3qdj7Icqh3rGEDkug5ZzZ9oyLaGDFL6bX/DKMWK6uy9r8vs
         GpVUQaa4af/4ez7Qh8jbvYgLTwnQI74J6IjOvWhr53lS82hxhwvLCbOA6PRtc1Ss1lAI
         8H2EtlcsHgBxS+OQtLdMYycu6X+B1dc8+bFRxeJNXG4fS6/W+TjJyvIkh5KKhnFiiFYc
         n9wA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=FA6RuX1ddv25kJBlLkMmFIC3iWhpuF+JOYJepC8hf8E=;
        b=ZRFva/u9svZk2BQyugWdkukKQRb0N42PQgZUu6skVnU0Jgfu2J4zGQUoLQrcyo2HTc
         r/abOe8AAWTEOgG4SR0YgReUD6uq6b0lLOpF9MossUv792opW6p8MllkSKDg3mYXCjP+
         XBL8sztJwAPFZRcm7aZJoUldY0zLEhnJCMV+l49GZV1sBcTKHfhaxC0ZAkYBNZ4kaa1Y
         QsmcTUzFuHBhSiLx8eqK+vBApxDekafFgs6shfNQsLZHUINrzGSGFmh5riPxLbppGbk8
         lDdLlAnXKmtBed3eK4DWbRxVuf1091RKQAfgvbXokPVeKQ0bplzU4f1QBOVWv/mgsFuW
         yw6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=N4mmZc5M;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FA6RuX1ddv25kJBlLkMmFIC3iWhpuF+JOYJepC8hf8E=;
        b=E9diImmPml2DacppCG/sZ3u6Iom/mbFK9eeyIodVrsfvZ83eiw49b0YHoI4aITxpBT
         eZ1NSVuRyHRDieASE8yR3qNLmfvi4LIZI/Cmy6Euzas7VGZti/2/O+d8Ea94LR/vhu+i
         XuGf5KFIoqQ5+iuLZ1G+NP8nWepbno5hsE5o2s3pi5zlr9+ASRHfeSvypiQ+dlWHYgUp
         hlqUPodqFkoHJQXSMnbKgYkwOLREzwE0nXYKs+Qb63TUV4SB0oXrF1CW3xF/jvmvdLvQ
         LgrGuvSrC5KLLR/bHsdPqtBSsVDLVzUUdhmRkXoaZGrCexFwa1ow1DcpYmXbU0eZXgZ5
         CZEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FA6RuX1ddv25kJBlLkMmFIC3iWhpuF+JOYJepC8hf8E=;
        b=fowbB1F739BgI+o1XEEYHFxYwBj2LsMcV2jMIvbl4ADoxyNL7D1uZ9RcAn3X5b9dMX
         jsYu1x7EJjSvDe2sQkMM01NNcIe8iBV8gcIw8je212oEl65z3BAvcw1kHmaEiZxH3A5S
         mbzcBk0yVD3uWwlJ5PRiZN9ExS7Nyis1dA+UPvw9VvDDpSECQSw6SmGOazFBVAj7EGzb
         2lquFNm0ZCcvWvdoieRBEuGqMhSaVupmjecEnwhMP3D30Zxs1fUTE9xPFdK1aqEAn8A3
         FLQf67oOXUhYIlulgM4/RCFehqlytZAgouqSEMQVrzbNcakp3zen7pNJLm8ELLf0xKJZ
         1byg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533Bu7wJLj9mRgBJat7NEvDSMXbAFb+3QiTpwDk1U1Y6trLKmMmQ
	JAs9jeQuMHpznlfNC3/7is4=
X-Google-Smtp-Source: ABdhPJyJIXCL8pLzaMIt34Fs5B8J6a7iGh3Ftg6jG9PCretNT3DejOsBSPUZnUp9kSNeBVMfJE3i7g==
X-Received: by 2002:a05:6a00:2d5:b029:13c:1611:653b with SMTP id b21-20020a056a0002d5b029013c1611653bmr15349028pft.13.1604171257705;
        Sat, 31 Oct 2020 12:07:37 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a62:ae08:: with SMTP id q8ls3423505pff.0.gmail; Sat, 31 Oct
 2020 12:07:37 -0700 (PDT)
X-Received: by 2002:aa7:8f10:0:b029:161:79ae:eace with SMTP id x16-20020aa78f100000b029016179aeeacemr14929320pfr.45.1604171256980;
        Sat, 31 Oct 2020 12:07:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604171256; cv=none;
        d=google.com; s=arc-20160816;
        b=GjKb3gUBiACM/akxG+DkMiN1uTn40527CQ2xd6+6Pda0YZYWS6KybyoL5NChAFR5zr
         Izk5qZFKsQwTymYgX9ZAPjf17vP6UQb1m01dBkyoXMFeD63hDY341Vqp6Q1232CVwUoU
         RwVu5rrz6qUPk0BbFxCxkxZgNRMF+cMm71mTIg1CRVMUnG5mvSWryUKtytMauoVs8cXX
         J52O0kz2XdDxtbGvlssZ3cx74Y1zAip+lMRH9j1kjtRenrmhbNBDpvq4ksORwPePVVpx
         8BXnJRjGNA6HWBTOrHyuNJIQcYY3GxqhebV2e8neRl1CC86nuMVkpwrdU8msWv8L7kGj
         cw5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=xi/CFWuKgz+ABQ83ow+3Sm141qAtmXncHIOTvxTiLVM=;
        b=W6m4UuVP5qvpX0Ph+3B5Ic9eK1tNyLtfkc97W1jRl1JKGnXE57v1hlj9wmfslkpjGm
         THk5PiPCRH24G8lZxDCs5XUPOYPn9PZEt5b9HOhCFScMXRMqll3g1axH/gYi60XXT3X9
         OW3mmj7esusOxC1w/2mOdT6Se6sgrkHyTVTa6OKDyp8WRGoPFXx675ka8Gu6k0NqSm0H
         rHDGSP66dtlhLLOrVXiuEPwRPYrWu0PhUGEPDiQnHqae9ViLBFhZSDjLL1J8DyEGNp8O
         Vqv5TWQ1plw1sPxkLtssJ7vHNa35rF4eGX5teOwKWL3UOsxhOEb16LCLP0igWYuVpBJT
         QFzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=N4mmZc5M;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id i4si533916pjj.2.2020.10.31.12.07.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2020 12:07:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09VJ7ZQR115962;
	Sat, 31 Oct 2020 19:07:35 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2120.oracle.com with ESMTP id 34gyvks4yp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sat, 31 Oct 2020 19:07:35 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09VJ6G99170440;
	Sat, 31 Oct 2020 19:07:35 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3020.oracle.com with ESMTP id 34gyqys3xy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 31 Oct 2020 19:07:35 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 09VJ7RDe003531;
	Sat, 31 Oct 2020 19:07:31 GMT
Received: from [20.15.0.202] (/73.88.28.6)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Sat, 31 Oct 2020 12:07:27 -0700
Subject: Re: [PATCH] scsi: libiscsi: Fix cmds hung when sd_shutdown
To: Wu Bo <wubo40@huawei.com>, linux-scsi@vger.kernel.org,
        open-iscsi@googlegroups.com
Cc: lduncan@suse.com, cleech@redhat.com, jejb@linux.ibm.com,
        lutianxiong@huawei.com, linfeilong@huawei.com,
        liuzhiqiang26@huawei.com
References: <1604132622-497115-1-git-send-email-wubo40@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <15627360-dd21-074c-868b-88d641372594@oracle.com>
Date: Sat, 31 Oct 2020 14:07:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <1604132622-497115-1-git-send-email-wubo40@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9791 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 mlxscore=0 adultscore=0
 suspectscore=0 bulkscore=0 spamscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010310158
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9791 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 clxscore=1011
 impostorscore=0 mlxscore=0 mlxlogscore=999 lowpriorityscore=0 adultscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010310158
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=N4mmZc5M;
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 10/31/20 3:23 AM, Wu Bo wrote:
> For some reason, during reboot the system, iscsi.service failed to
> logout all sessions. kernel will hang forever on its
> sd_sync_cache() logic, after issuing the SYNCHRONIZE_CACHE cmd to all
> still existent paths.
> 
> [ 1044.098991] reboot: Mddev shutdown finished.
> [ 1044.099311] reboot: Usermodehelper disable finished.
> [ 1050.611244]  connection2:0: ping timeout of 5 secs expired, recv timeout 5, last rx 4295152378, last ping 4295153633, now 4295154944
> [ 1348.599676] Call trace:
> [ 1348.599887]  __switch_to+0xe8/0x150
> [ 1348.600113]  __schedule+0x33c/0xa08
> [ 1348.600372]  schedule+0x2c/0x88
> [ 1348.600567]  schedule_timeout+0x184/0x3a8
> [ 1348.600820]  io_schedule_timeout+0x28/0x48
> [ 1348.601089]  wait_for_common_io.constprop.2+0x168/0x258
> [ 1348.601425]  wait_for_completion_io_timeout+0x28/0x38
> [ 1348.601762]  blk_execute_rq+0x98/0xd8
> [ 1348.602006]  __scsi_execute+0xe0/0x1e8
> [ 1348.602262]  sd_sync_cache+0xd0/0x220 [sd_mod]
> [ 1348.602551]  sd_shutdown+0x6c/0xf8 [sd_mod]
> [ 1348.602826]  device_shutdown+0x13c/0x250
> [ 1348.603078]  kernel_restart_prepare+0x5c/0x68
> [ 1348.603400]  kernel_restart+0x20/0x98
> [ 1348.603683]  __se_sys_reboot+0x214/0x260
> [ 1348.603987]  __arm64_sys_reboot+0x24/0x30
> [ 1348.604300]  el0_svc_common+0x80/0x1b8
> [ 1348.604590]  el0_svc_handler+0x78/0xe0
> [ 1348.604877]  el0_svc+0x10/0x260
> 
> d754941225 (scsi: libiscsi: Allow sd_shutdown on bad transport) Once
> solved this problem. The iscsi_eh_cmd_timed_out() function add system_state
> judgment, and will return BLK_EH_DONE and mark the result as
> DID_NO_CONNECT when system_state is not SYSTEM_RUNNING,
> To tell upper layers that the command was handled during
> the transport layer error handler helper.
> 
> The scsi Mid Layer timeout handler function(scsi_times_out) will be
> abort the cmd if the scsi LLD timeout handler return BLK_EH_DONE.
> if abort cmd failed, will enter scsi EH logic.
> 
> Scsi EH will do reset target logic, if reset target failed, Will
> call iscsi_eh_session_reset() function to drop the session.
> 
> The iscsi_eh_session_reset function will wait for a relogin,
> session termination from userspace, or a recovery/replacement timeout.
> But at this time, the app iscsid has exited, and the session was marked as
> ISCSI_STATE_FAILED, So the SCSI EH process will never be
> scheduled back again.
> 
> PID: 9123   TASK: ffff80020c1b4d80  CPU: 3   COMMAND: "scsi_eh_2"
>   #0 [ffff00008632bb70] __switch_to at ffff000080088738
>   #1 [ffff00008632bb90] __schedule at ffff000080a00480
>   #2 [ffff00008632bc20] schedule at ffff000080a00b58
>   #3 [ffff00008632bc30] iscsi_eh_session_reset at ffff000000d1ab9c [libiscsi]
>   #4 [ffff00008632bcb0] iscsi_eh_recover_target at ffff000000d1d1fc [libiscsi]
>   #5 [ffff00008632bd00] scsi_try_target_reset at ffff0000806f0bac
>   #6 [ffff00008632bd30] scsi_eh_ready_devs at ffff0000806f2724
>   #7 [ffff00008632bde0] scsi_error_handler at ffff0000806f41d4
>   #8 [ffff00008632be70] kthread at ffff000080119ae0
> 
> Reported-by: Tianxiong Lu <lutianxiong@huawei.com>
> Signed-off-by: Wu Bo <wubo40@huawei.com>
> ---
>   drivers/scsi/libiscsi.c | 12 +++++++++++-
>   1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index 1e9c317..2570768 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -2380,7 +2380,17 @@ int iscsi_eh_session_reset(struct scsi_cmnd *sc)
>   
>   	mutex_lock(&session->eh_mutex);
>   	spin_lock_bh(&session->frwd_lock);
> -	if (session->state == ISCSI_STATE_TERMINATE) {
> +
> +	/*
> +	 * During shutdown, if session is prematurely disconnected
> +	 * recovery won't happen and there will be hung cmds.
> +	 * To solve this case, all cmds would be enter scsi EH.
> +	 * But the EH path will wait for wait_event_interruptible() completed,
> +	 * when the session state machine is not ISCSI_STATE_TERMINATE,
> +	 * ISCSI_STATE_LOGGED_IN and ISCSI_STATE_RECOVERY_FAILED.
> +	 */
> +	if (session->state == ISCSI_STATE_TERMINATE ||
> +		unlikely(system_state != SYSTEM_RUNNING)) {
>   failed:
>   		ISCSI_DBG_EH(session,
>   			     "failing session reset: Could not log back into "

Do you need this with the current code? If the system_state is not 
SYSTEM_RUNNING above, shouldn't we call

iscsi_conn_failure -> iscsi_conn_error_event ->
stop_conn_work_fn -> iscsi_if_stop_conn(STOP_CONN_TERM) -> iscsi_conn_stop.

iscsi_conn_stop will set session->state to ISCSI_STATE_TERMINATE, so 
when iscsi_eh_session_reset does:

wait_event_interruptible(conn->ehwait,
                          session->state == ISCSI_STATE_TERMINATE ||

....

that will fail immediately right?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/15627360-dd21-074c-868b-88d641372594%40oracle.com.
