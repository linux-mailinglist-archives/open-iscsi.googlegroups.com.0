Return-Path: <open-iscsi+bncBC6MFJWO34DBBUGKRGJQMGQE4CFELHY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4F350B2BC
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Apr 2022 10:20:34 +0200 (CEST)
Received: by mail-ej1-x640.google.com with SMTP id mp18-20020a1709071b1200b006e7f314ecb3sf3751177ejc.23
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Apr 2022 01:20:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650615634; cv=pass;
        d=google.com; s=arc-20160816;
        b=rgWhf2gDW+IJXLhleZVWlVy/IYIH1zjBCVyIHJCt3ORhCcrvsPhgCDStltTfqgMYCJ
         XN6duRvpOGicieu2tHg847jcOxzhYHmhkewTNRowLjyPYOhvd6ZaSJv3xgFJj/9rFN+l
         wI8fwq7rcunmAjyZ2Pv2+NwtRgIMByksT5j8y351sy3eYZlCc3QEzr7y8IgZUuiY2onX
         hYCQkR5WDVsZu05IuLXNQPcSqQmqZ78vuimcT46ZPyfCrln4dCIQOq7KynSOaawOLBOt
         VMMVl8I7HWozJ2o7BxPAfJn9V5w0wkMrbcnCD8Jb4m8qg6ubqml/y3/CdUxChy0A31n/
         YTPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:cc:to:from:date
         :message-id:sender:dkim-signature;
        bh=F7s799W/HlwdkYFWriFOXWXnUI+Oe6e3b2b0L9Z29jg=;
        b=jIS3l1IS//y6h6s74herIvpBwhvjLfc5CxCc00KwvYgk/l9MESwX0Rj+Oyr381uac6
         9VBksNouwCxRKDXPJ0Hnc69io76INkTbq5gZ+pa6gk0mQBJKW8TLrAd5SHIVjMRbuYK5
         pGs3X6dPpNt2jKGhNwxURcGiwjL/OkPacAUsuWKb/NrEX7bTvdvQXf0iIeek9JuGF+M4
         6Bl1Yc0Rtw37DsgMmjHjum660EgjGXsJmhxOOLKsNusS2dGMAdCUvG5JY3sJMq6o6ozT
         oWNSQNVoo0YSWAOYFdja8sOK4uQtOsd4uXrxfqjfEul4QVB2BcgLoblGY5ul0SpWdZ+S
         WNXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.146 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:from:to:cc:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=F7s799W/HlwdkYFWriFOXWXnUI+Oe6e3b2b0L9Z29jg=;
        b=p4If85A5AksDqJZ1bkxAJhsYet6skyFUMDJOHoqV2qoSWBL855pe3fVwzmrespejQn
         X8pnhGiBzzOCU9fK2z2sRUCvDMaqyarDwQmrh4Zbo5Cb/wr3H2Cn5wdARsdm9VY+1R1K
         ucnubcTQ/M4qY9PNYb1liHYZzy9fsYPsz2tLzfTrzcXiGU8R6ezjMQ8+V+Bn4eO2S+ej
         RB2rap663S2sEgu+4FuGF3kUinX6MxBCKtpOjD0MDyaHbU0sHfuLQuarH87+fwPa68AD
         RxSNbzDqKIIypv0B6HmB5hiHvQMZQy+BThIezTgpwrwblEGkVBj8Z2sy+zgriQY9YW4g
         fU4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F7s799W/HlwdkYFWriFOXWXnUI+Oe6e3b2b0L9Z29jg=;
        b=1vvrOslyvCiBkCak+6WisfUTvKENEEiLYHugYxbhAHtsVvkrdjpf5X7eIAciJPx+td
         tOkv3W6YiWknaqcCnngPCeZGx8N0bBW0lnTfBCjoPD+asyuzOYkwZVjd1sj/9/xBTqvl
         67KCxjaaSvVRQJd0tJ4Jyo5Q/eCiYMM0DOpKzCzQ7ta1mstqaw7MLkHz+EbH4IxAkDkf
         Cp+rE+4At55zBoUVunDHUAKdhZPXog6sxTJhm3DPWonzuqNzOR3TKBpckaEC7Q66eGNl
         4k7p0VVYHVx12qCAoE+yjTIUKol6p524bPQyueqdkwpF3cL0LmlvqVqyTi46XYxDkIjB
         euKA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531y/e4BCy74PkxyymUHkNjx4W7ksTXztdYR6FkgLxvr5UlF+zjg
	h24DEqoSkMB5d6flGahtk3U=
X-Google-Smtp-Source: ABdhPJxFt6D/Ymn0peW+Jfg2bSnlr0H9xn8JaDVOEzHkT9tV0AurvhKnuVb5q/Ndx+Gnc+xIDqRdDQ==
X-Received: by 2002:a05:6402:3046:b0:420:120e:ef2c with SMTP id bs6-20020a056402304600b00420120eef2cmr3615855edb.160.1650615634497;
        Fri, 22 Apr 2022 01:20:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6402:26d1:b0:423:db38:39c3 with SMTP id
 x17-20020a05640226d100b00423db3839c3ls797269edd.0.gmail; Fri, 22 Apr 2022
 01:20:32 -0700 (PDT)
X-Received: by 2002:a05:6402:298b:b0:41d:675f:8b44 with SMTP id eq11-20020a056402298b00b0041d675f8b44mr3541782edb.377.1650615632061;
        Fri, 22 Apr 2022 01:20:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650615632; cv=none;
        d=google.com; s=arc-20160816;
        b=vtxX7GiknuwbM0waL+ICQ5cp1ddTpwThIB/Cyj+2iLdlfpeezMJS/s7avaZHoaLka2
         6+m2sGsFicWO2pXXebAYacL2Fr+Rn5yxJYxwggLDjYe1UhO0jB9LrE3I8SR1uqAMGedN
         XoFhs4n/q1kKgJEh8qQCqMkwgkfRBpP1Jr4tiXvB1wlXcevy0OwHahdW4V48ELfCnpYy
         ZpBn+szsW2J22j0OUNjKusIf6l4QDVUnUYVX3WGWZ6oT2nijJvjvKrZ/wEyAzk1WoO8Z
         uRZTQYUDiQ1Rtb/1QWbO/YbM13e8LgN61F7M4jGTnHyrq6Amq09wyjNysF696/eRijax
         RT+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:to:from:date:message-id;
        bh=SChDMfpCTi0rDCEJqNTA54yScq6JWhn4uO89ZsioBuU=;
        b=vjfWfyApKJEYBkVYzCvHIGb4NRZKFp1V0bUJPQewjOsIrpwnkUi3hUUR7Rh0Jx72C6
         ma0P9Ads/LXwbraGL07CWSfTdcWee23OFN/1xqlp4a3K5ROVcOlxU/zAwy3qyVqE1yIG
         ecxvZj82fT2QDF1pm9y5IsORzjIcIMQ67OqkkvxhKZvcZo/X0L3u++8N5lj9CFhmQ9/z
         3SW4hLIv+yRVX2ds0a0+7bVFaIl9Z9mUC2Yg/DaHXFkBx1Mu5rnrQFTKokwT+4pE4tEo
         JWGeCZeajF2UaJQs8Ks6NSrmSe3NbcGtTxoG2QZXfyLOzky3stqtcopn7u66l51IYvP5
         757g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.146 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx1.uni-regensburg.de (mx1.uni-regensburg.de. [194.94.157.146])
        by gmr-mx.google.com with ESMTPS id j1-20020a50d001000000b0041b5ea4060asi358427edf.5.2022.04.22.01.20.32
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Apr 2022 01:20:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.146 as permitted sender) client-ip=194.94.157.146;
Received: from mx1.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 180CD6000050
	for <open-iscsi@googlegroups.com>; Fri, 22 Apr 2022 10:20:31 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx1.uni-regensburg.de (Postfix) with ESMTP id EE8B1600004E
	for <open-iscsi@googlegroups.com>; Fri, 22 Apr 2022 10:20:30 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Fri, 22 Apr 2022 10:20:31 +0200
Message-Id: <6262654D020000A100049812@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.4.0
Date: Fri, 22 Apr 2022 10:20:29 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: <michael.christie@oracle.com>,"Lee Duncan" <lduncan@suse.com>
Cc: "open-iscsi" <open-iscsi@googlegroups.com>,<jejb@linux.ibm.com>,
 <martin.petersen@oracle.com>, "Chris Leech" <cleech@redhat.com>,
 <kernel-janitors@vger.kernel.org>, <linux-scsi@vger.kernel.org>
Subject: Antw: [EXT] [PATCH] scsi: iscsi: fix harmless double shift bug
References: <YmFyWHf8nrrx+SHa@kili>
In-Reply-To: <YmFyWHf8nrrx+SHa@kili>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 194.94.157.146 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Dan Carpenter <dan.carpenter@oracle.com> schrieb am 21.04.2022 um 17:03 in
Nachricht <YmFyWHf8nrrx+SHa@kili>:
> These flags are supposed to be bit numbers.  Right now they cause a
> double shift bug where we use BIT(BIT(2)) instead of BIT(2).
> Fortunately, the bit numbers are small and it's done consistently so it
> does not cause an issue at run time.
> 
> Fixes: 5bd856256f8c ("scsi: iscsi: Merge suspend fields")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  include/scsi/libiscsi.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
> index d0a24779c52d..c0703cd20a99 100644
> --- a/include/scsi/libiscsi.h
> +++ b/include/scsi/libiscsi.h
> @@ -54,9 +54,9 @@ enum {
>  #define ISID_SIZE			6
>  
>  /* Connection flags */
> -#define ISCSI_CONN_FLAG_SUSPEND_TX	BIT(0)
> -#define ISCSI_CONN_FLAG_SUSPEND_RX	BIT(1)
> -#define ISCSI_CONN_FLAG_BOUND		BIT(2)
> +#define ISCSI_CONN_FLAG_SUSPEND_TX	0
> +#define ISCSI_CONN_FLAG_SUSPEND_RX	1
> +#define ISCSI_CONN_FLAG_BOUND		2

Actually it's not the "flag" then, but the "flag's bit position".
Personally I think applying BIT() again is the bug, not the definition.

>  
>  #define ISCSI_ITT_MASK			0x1fff
>  #define ISCSI_TOTAL_CMDS_MAX		4096
> -- 
> 2.20.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/YmFyWHf8nrrx%2BSHa%40kili.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/6262654D020000A100049812%40gwsmtp.uni-regensburg.de.
