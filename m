Return-Path: <open-iscsi+bncBC6MFJWO34DBBQVB632AKGQEJOWNLNY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 994BD1B08D1
	for <lists+open-iscsi@lfdr.de>; Mon, 20 Apr 2020 14:08:34 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id j5sf4085245wmi.4
        for <lists+open-iscsi@lfdr.de>; Mon, 20 Apr 2020 05:08:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587384514; cv=pass;
        d=google.com; s=arc-20160816;
        b=nzsDiQUfHV78USP20UDng2IPXBytUUfVql6VolA1lBjYbaE5+xEfslp9dLiUJUSdbx
         y7yleE8mlbWjGYTDnsQTsyanCuhUyUDImfm3HgJh9V5wiBSUVfkcb/rBzD4DFWeRDIcG
         TQb3OPJNhMDZe9HYLvvjmTBcqBSK6VgmLkz5S1JqYTA21Rd/NJAiCyMVRTZqGU7cWEUW
         nQe3+nLJNcvrn+vkGnhvFLKNBYFwKJ7+UMFtAXBL0t1qSnULQ0Km8HpYZyrPm7KiNmgq
         ey65S/w5/I+7J6+d2un2xc3ncEYOtDyTq6NlKN3C2T8TP2+biz147D7puYsoaH4F7nZ3
         UzIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:cc:to:from:date
         :message-id:sender:dkim-signature;
        bh=yXnG6gOv1j97KvDsVAb2V/sf8Rxrp+QrC+S9WXWnx0I=;
        b=BGbE3soWmY3KUNzd+Xto/GSD5WxpUu24fTf1ARv2mZni/TmPuI/DE6vU2Le/wcZaQ/
         zWnicstRDEgKMAxNNKjGwBkLgMpMWJiqI/46hzfjo6DkwaYSVROVNieSZkwow3DYDGaM
         SW5C5TZyxQZbwx00BXvtaSuYuKznK2MkwJjGnWAWTURuVVvlvMXSpKqcNU9vwVwhmq6t
         ZxQeVGQS5xcYvmFhPW9TU/n49wOk8lE3GCBB7qaDRzKOoBWcKZKrQXrLW6Rb++Zth7pA
         3dT7NUVF1wSfpJVHDG9hn8FUcCKko7lNljwPbgXb9UiTLsK8d01Oa2FjVaEQ+Kt2pyCY
         Cv7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e79 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=yXnG6gOv1j97KvDsVAb2V/sf8Rxrp+QrC+S9WXWnx0I=;
        b=D3d5MFhfQNZBxSnBShxxSVC7kTbrSDrUUnnmj38CiscpKktGsHxNlBvbnFwu+nAriT
         21xzra5C81zpisSj+7HxOOAGEszC+ewkKEq4aha73cObQQgcuy92LRvaSNOLZeS+cQiw
         z5vXWK4aucx3Lx01QcU+86jeNqt4PoTVjyUONf9g1WogML25srg5Id0OOrTThoM45Ai4
         ip+W66z0W+KmRl+cv92sgveIb+d5kNLQGQhkFCyn6sVlHpnu64d4k4zVS05IQIzC49Jh
         1geSomLNO0+bqmzzdfZrmq1mLSFDuBbITcsAva+vl5eiMnHBPiUwlRzbOlMsWnmhMism
         +89A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yXnG6gOv1j97KvDsVAb2V/sf8Rxrp+QrC+S9WXWnx0I=;
        b=tJPvAWesfbbbr8u44s4Nda+NcE3vFxCbl4vci4hdTOKO4ivT1dSSRyuQrnTf+8+VYx
         RWxJKuriH1zCECDEVYJEdP7cWOwDydZT2qtbGCRUKz5wFZKUUdpUkwSdsOoKw4MeEm3/
         F58B0iCwvWtBvhN1eIhkNzt2oT7KGAQgg6oaGVGecg/wd2H+6+Mo7zaQIO8sl0ZBg578
         SoAN4cC8NxOi0lqrN6hQVDxmqbB3unX7OnaAcjd0JRHvp8GjoZye6dqBlL5nbIS0i2Zc
         9QcnRGeQT77tH7cmdcrlxlqHLK3ndqzdVKjx17qmxUFJkEJnexwSb6RsH0yXZUOHL8Zm
         XY9g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuYj0qpaNUpefTle8dcpuSs3xop6zBkmXl/nTPyIRvD+k0NCEmPQ
	DbRlltdNWmDButEGncUIisA=
X-Google-Smtp-Source: APiQypKjq6iOErpxSmX2b32GYeTCTkfR9+CENNPy8/aIoZUDhmL62lBsLVd3u5vZjP3wi78M2sGr6g==
X-Received: by 2002:adf:bb84:: with SMTP id q4mr17431068wrg.141.1587384514343;
        Mon, 20 Apr 2020 05:08:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:4a83:: with SMTP id o3ls12254532wrq.7.gmail; Mon, 20 Apr
 2020 05:08:33 -0700 (PDT)
X-Received: by 2002:a5d:4381:: with SMTP id i1mr17979354wrq.194.1587384513835;
        Mon, 20 Apr 2020 05:08:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587384513; cv=none;
        d=google.com; s=arc-20160816;
        b=B2aNzdXfuWerM79CALPDEif+nCPRAJr1+zfalwHqNvtYSXXeHLVEHH5jjdJvfdMdsZ
         uZqJ2ha2BgFcbk9kQMqcuk8Fb6004HYFuDbgQULMLD635CxB22/u1m+KugUOKzaA+D9G
         Rv3XeE9AOMI8i/VHKIZIbmRMhXlWR/pxRfmuefIQZZXmSsxpq9qSq7VE+EbmpsH0b4bj
         lyL8K5yWv4eeT0HLYA8EXDyALGrmUQ+VBedgzZflv2Nm8CmJJyn124FVCSLBy6ljGHfR
         2hAQFH0ZD6eM550ij2hNtzp3Fb03L2INtwwPy9beAnTnFU6eeKhjH2VGlc3LgWeXcDhj
         IESQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:to:from:date:message-id;
        bh=+cNCZD4otbiqSULnWQ7XivaMpWcJHLIYPaCTmrXApjE=;
        b=rVPqarfga7b4PRFgNnmd0Xv/OtWJ9Cl94v37Z/kyxQgu9mp86XAzUuM9JMpO9yN4h5
         86Sr2hzJVIUkpCFaJIUmhai69VmER5LEahH4Oznqac9x0LC3MZryLfPouT4UMrto6VRw
         3zuNSfCxBM40guiwTV9vgj4qYz5uZiXXMjIzHEi9BLsGpWyX7YvskQcLsEEScyP2qKxr
         LmHuWave9tXuwuXO7VkIEfCBs+ubZ4gfnT9y28X2eiPyvtoQFHVHkRiqYlpv5DjScD3k
         Ilz8w3nke2fKiKR7RYwsrmbr3hQN/IMqr+zb9LgehF1BLKbJkYRvloDAX72TUq3sbOtn
         3e1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e79 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx3.uni-regensburg.de (mx3.uni-regensburg.de. [2001:638:a05:137:165:0:4:4e79])
        by gmr-mx.google.com with ESMTPS id o186si272052wme.4.2020.04.20.05.08.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Apr 2020 05:08:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e79 as permitted sender) client-ip=2001:638:a05:137:165:0:4:4e79;
Received: from mx3.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 79ECF6000060
	for <open-iscsi@googlegroups.com>; Mon, 20 Apr 2020 14:08:32 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx3.uni-regensburg.de (Postfix) with ESMTP id 2556B600005D
	for <open-iscsi@googlegroups.com>; Mon, 20 Apr 2020 14:08:32 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Mon, 20 Apr 2020 14:08:32 +0200
Message-Id: <5E9D90BD020000A100038651@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.1
Date: Mon, 20 Apr 2020 14:08:29 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "Lee Duncan" <lduncan@suse.com>
Cc: "open-iscsi" <open-iscsi@googlegroups.com>,
 <liuzhiqiang26@huawei.com>
Subject: Antw: [EXT] [PATCH] open-iscsi:Modify iSCSI shared memory
 permissions for logs
References: <6355_1587114536_5E997228_6355_294_1_d6a22a2f-3730-45ee-5256-8a8fe4b017bf@huawei.com>
In-Reply-To: <6355_1587114536_5E997228_6355_294_1_d6a22a2f-3730-45ee-5256-8a8fe4b017bf@huawei.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:4:4e79 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

Hi!

Maybe this could be made a symbolic constant, or even be made configurable.
The other interesting thing is that there are three seemingly very similar code fragements to create the shared memory, but each with a different size parameter (sizeof(struct logarea) vs. size vs. MAX_MSG_SIZE + sizeof(struct  logmsg)) ;-)

Regards,
Ulrich

>>> Wu Bo <wubo40@huawei.com> schrieb am 17.04.2020 um 11:08 in Nachricht
<6355_1587114536_5E997228_6355_294_1_d6a22a2f-3730-45ee-5256-8a8fe4b017bf@huawei
com>:
> Hi,
> 
> Iscsid log damon is responsible for reading data from shared memory
> and writing syslog. Iscsid is the root user group.
> Currently, it is not seen that non-root users need to read logs.
> The principle of minimizing the use of permissions, all the permissions 
> are changed from 644 to 600.
> 
> Signed-off-by: Wu Bo <wubo40@huawei.com>
> ---
>   usr/log.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/usr/log.c b/usr/log.c
> index 6e16e7c..2fc1850 100644
> --- a/usr/log.c
> +++ b/usr/log.c
> @@ -73,7 +73,7 @@ static int logarea_init (int size)
>          logdbg(stderr,"enter logarea_init\n");
> 
>          if ((shmid = shmget(IPC_PRIVATE, sizeof(struct logarea),
> -                           0644 | IPC_CREAT | IPC_EXCL)) == -1) {
> +                           0600 | IPC_CREAT | IPC_EXCL)) == -1) {
>                  syslog(LOG_ERR, "shmget logarea failed %d", errno);
>                  return 1;
>          }
> @@ -93,7 +93,7 @@ static int logarea_init (int size)
>                  size = DEFAULT_AREA_SIZE;
> 
>          if ((shmid = shmget(IPC_PRIVATE, size,
> -                           0644 | IPC_CREAT | IPC_EXCL)) == -1) {
> +                           0600 | IPC_CREAT | IPC_EXCL)) == -1) {
>                  syslog(LOG_ERR, "shmget msg failed %d", errno);
>                  free_logarea();
>                  return 1;
> @@ -114,7 +114,7 @@ static int logarea_init (int size)
>          la->tail = la->start;
> 
>          if ((shmid = shmget(IPC_PRIVATE, MAX_MSG_SIZE + sizeof(struct 
> logmsg),
> -                           0644 | IPC_CREAT | IPC_EXCL)) == -1) {
> +                           0600 | IPC_CREAT | IPC_EXCL)) == -1) {
>                  syslog(LOG_ERR, "shmget logmsg failed %d", errno);
>                  free_logarea();
>                  return 1;
> --
> 1.8.3.1
> 
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/d6a22a2f-3730-45ee-5256-8a8fe4b0 
> 17bf%40huawei.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5E9D90BD020000A100038651%40gwsmtp.uni-regensburg.de.
