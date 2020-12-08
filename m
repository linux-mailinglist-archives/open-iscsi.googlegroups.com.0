Return-Path: <open-iscsi+bncBC6MFJWO34DBBZHUXT7AKGQEUJBQOIQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id A25092D2622
	for <lists+open-iscsi@lfdr.de>; Tue,  8 Dec 2020 09:33:40 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id o19sf5783063ljg.17
        for <lists+open-iscsi@lfdr.de>; Tue, 08 Dec 2020 00:33:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607416420; cv=pass;
        d=google.com; s=arc-20160816;
        b=VDAzTaWt/Q5rl/rR/UiaUoinOJ2TSDg48DmMhBYo9Nat3siLX+wOzIXy1VJPMsPTWb
         /3P7X3/6d7HNZ9fVMzHAyOsVNAruyt5ztVI0q5QIppTje2jNkxEV8OzyFbkeErfPHAW4
         OZW/j+4ITtkvyRemPdgkjUxvbJYCB1qn+r3o6E9tP+xBqe+jfQh76JcMTWWtB76MGTCk
         q0Xwo7Tt0raywj5fskrrQwS2KrHjgWKVIQDKbNn2o04Y29tIp42RnTKxPhJ+wfuU/y1Z
         18LwhVhfnZbEpp39oVDo1N2uNys+V7zKMHIccqhC5DxGpJSsH332paCS8XYeNPucH52j
         PceA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=DA3N9xBxxE9RZDsIcKz23kN6QP6mkKz47LgDeyZJZz8=;
        b=YQH7F2Af7tlopnVWM1t2EHdCgEFLc5BbT8eHLvyaD74MbWeBjLzS692v80U4s4+jPs
         aVftGALMEW8gXmv1gB3mscbb1C1LntTFxapF/QdjUqcUi+zB5EA0+VSDmPk9AC7FfFI9
         2hQIyqoNoD5Enn3zyCATTkLtL/P0LgkOp19aDBOEd8bEH1ng2hboS7li8/US6AjXegPS
         AssXEwEljLL99I29V9EIxoNWqbMo4OT/3KrcJKezUe9c9rKNNn3b/VWk9BDKKw0xWsOm
         uTaeLX/k7xnB++QvpSdwf+dnGVhvw1OqriKyIWynkNeKDlQdaElP50JkwYYxnWuRmjcr
         Y/Ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf7 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DA3N9xBxxE9RZDsIcKz23kN6QP6mkKz47LgDeyZJZz8=;
        b=l7kgpP/QrZ95M9hc8OqdqJ6RjZIPcArq2ZS7KFiGy0vFPl9Th6RbrCRcEWkfxKy69G
         rIpdhYp0tIuTfMCMv4fw080T5TDI5QcmtVN2DCt5WmMd7R+6WmDyOvIEnpKieqtw301L
         +lTSYRg7CeSHG7ArhpTVW0OwpA1pNx9ejKCpbJLuHZHnSbc9qJz3ta9/AMkSJ/r6OBYD
         PtCvt21GFl61zUSG1szsAc9Wc9xYCs+/wCfTx5KPw+lwutqZOAiYg1iyjwhfzBbH+A05
         Gu77nCQFCOdP8AK5gpkesDnouzZ61K6r8pr8D7f6SkzRPwISCYk1yRM9rdGwq1mcRSrS
         cBxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DA3N9xBxxE9RZDsIcKz23kN6QP6mkKz47LgDeyZJZz8=;
        b=CvzKLnDPEdcMbiUP6fJlrl4frhxljVtrnqgHJs2hgBLhz1PwoC3Ceub7LwGWodh0cv
         dx8UMLNvjWUtT5IvtqIKRk89/bXoGFSIV3BRw1JaXSErE3P0vVUkX+j69ANcM4bwW/6D
         LJGFxdr9q4MUxwVAlQvfdrW6ZC+16GtbOTjY9p6ezoV+DN7PW6oDexRM8tlw769vAE42
         fa6MeFloXmnu5n/0KTpGOfcY7K7QZxwpTFHNLKsP3bNtOYkfPTwC6tkIhm4PceP5NY+C
         SvFMpOwaHHVDmO9gN53T1WIz8lsmjovnmKqt0TK5QZRGxaOO58fuN2RMPa6oahfi2Vs6
         jQVA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531hWplLYsq1aDQ8YtVYRKZgvvgG7eOlZceqLZyYFoL265ZwCieb
	gLt4NIuc4TYU8EaUGAuAIOQ=
X-Google-Smtp-Source: ABdhPJyUTIhaojKBycOT9O/Y3abHxh+Yr5u2vAlQ7XjseGVCGT5+4slOsEWTGkqHSqgF3EZsZ9t69w==
X-Received: by 2002:a2e:97c8:: with SMTP id m8mr9747719ljj.338.1607416420270;
        Tue, 08 Dec 2020 00:33:40 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:9a94:: with SMTP id p20ls2742020lji.0.gmail; Tue, 08 Dec
 2020 00:33:39 -0800 (PST)
X-Received: by 2002:a2e:760c:: with SMTP id r12mr3852196ljc.11.1607416419320;
        Tue, 08 Dec 2020 00:33:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607416419; cv=none;
        d=google.com; s=arc-20160816;
        b=JEzUjrjI/em7kR0m9X4EvuyPEEmalKTSJQTehCV+dYrrt2NNUMfrTs3rZwLMcdQZQd
         HdDumOHftM8lTPPi+KKzqgVTGniNcrPLUXF9crXGHBLTGWLLSCme+1fF1uLu9YGKzN/y
         G8HF7fLj6aqQOfg8jqonxwioqyYCMPTgXN8n/VotObM1AD4O8scErWXRrpmFp2AUX0hm
         SR2N/Kn4fKGaCweo1ioFlfN0kZCJc+YgUKiCiHMuqXJuLCBx0T1LhamT6ljgX9+opJ3G
         rlPynTikk4jEprquLvrs+E2a2kD0Bb8pJj4ZFfGQNnC8v5Z2QKmY7nWQEf29dyYpIkg1
         d+iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=no+pzKreL5/WhOb3WRQQEnriKF72jzc4DOgSRUuNwSo=;
        b=kwYxUBt9FA1O/FxSn3Oor9EOd7d8yQrKFJoB7W9cg/liucnGqXStxLEOGGJ5NfdwSU
         iRDA2CgvFg3+c3IVAAW3z8ywRoln9RQjGusyYZsKRKy5VBozh5FhooOfJzve24Zq+wRN
         tAExem+Z3UgoJslaZiUP5jH3UpIibeIxIC6FI6T43Z62It8LjEyLpI0INiQFHBReMMIU
         PbVjrqjHPVEI/52sCbB4zntWIA6b8X6ksFyJOllj68GwpO1nJz1laYlpEihBGU/lxoTc
         ARR0McR16cDdHiJrNCydu5SKzGgTCAerbvc1HM34Vw6IeC/3zYEFz40O20UE1H5JoM0V
         ZaLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf7 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx1.uni-regensburg.de (mx1.uni-regensburg.de. [2001:638:a05:137:165:0:3:bdf7])
        by gmr-mx.google.com with ESMTPS id h21si258845ljj.6.2020.12.08.00.33.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Dec 2020 00:33:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf7 as permitted sender) client-ip=2001:638:a05:137:165:0:3:bdf7;
Received: from mx1.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id ED6AC6000050
	for <open-iscsi@googlegroups.com>; Tue,  8 Dec 2020 09:33:37 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx1.uni-regensburg.de (Postfix) with ESMTP id 882E4600004D
	for <open-iscsi@googlegroups.com>; Tue,  8 Dec 2020 09:33:37 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Tue, 08 Dec 2020 09:33:37 +0100
Message-Id: <5FCF3A5F020000A10003D5BB@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.0
Date: Tue, 08 Dec 2020 09:33:35 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] [PATCH 05/12] open-iscsi: Fix NULL pointer
 dereference in mgmt_ipc_read_req()
References: <20201207015410.48488-1-haowenchao@huawei.com>
 <20201207015410.48488-6-haowenchao@huawei.com>
In-Reply-To: <20201207015410.48488-6-haowenchao@huawei.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:3:bdf7 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Wenchao Hao <haowenchao@huawei.com> schrieb am 07.12.2020 um 02:54 in Nachricht
<20201207015410.48488-6-haowenchao@huawei.com>:
> If malloc() returns NULL on fail, we should return -ENOMEM to
> avoid NULL pointer dereference.
> 
> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
> Signed-off-by: Wu Bo <wubo40@huawei.com>
> ---
>  usr/mgmt_ipc.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/usr/mgmt_ipc.c b/usr/mgmt_ipc.c
> index c292161..054378e 100644
> --- a/usr/mgmt_ipc.c
> +++ b/usr/mgmt_ipc.c
> @@ -453,8 +453,11 @@ mgmt_ipc_read_req(queue_task_t *qtask)
>  		/* Remember the allocated pointer in the
>  		 * qtask - it will be freed by write_rsp.
>  		 * Note: we allocate one byte in excess
> -		 * so we can append a NUL byte. */
> +		 * so we can append a NULL byte. */

Nitpick: "NUL" is a well-defined ACSII character, while NULL is a well-defined C pointer. Thus I'd keep NUL.

>  		qtask->payload = malloc(req->payload_len + 1);
> +		if (!qtask->payload)
> +			return -ENOMEM;
> +
>  		rc = mgmt_ipc_read_data(qtask->mgmt_ipc_fd,
>  				qtask->payload,
>  				req->payload_len);
> -- 
> 2.27.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/20201207015410.48488-6-haowencha 
> o%40huawei.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5FCF3A5F020000A10003D5BB%40gwsmtp.uni-regensburg.de.
