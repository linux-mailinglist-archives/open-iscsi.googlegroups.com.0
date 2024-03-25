Return-Path: <open-iscsi+bncBD3JNNMDTMEBBH4QQ6YAMGQE3SVXHQQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 574A988AF03
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 19:53:22 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id d9443c01a7336-1e0c070b660sf9040505ad.2
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 11:53:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711392801; cv=pass;
        d=google.com; s=arc-20160816;
        b=nTalcYJ0QwjYC4eWhBpKm6LqsVy1p34y8hCfgLCThlGjVHWXaR+3VVlX+XEVGqejch
         flgyh7NM+dVooBctNQcuHKttyNBe3AwVRyEzYSAmXwge8rCUqJX/J3LLrueRKDaaI/49
         fvINfCKekDgBKtGoxyjZ4qUicZC55D3YC6HuRyYKslAAxMfmHGFoygpV2KfX0p9RBZKC
         sQ1R0eEsNtOub+8BF38R6+yBfBTRMalfzOLDR4tDfvjPMXLLzz/anLxDrhu9eKkDfULL
         pBWf5QVUo5TAkOIysQ8XL05Pfg/2pYhzCcor4+1ZFXob0hAPh6lm9x/FE6Z3/Fh5GkSj
         hP6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:sender:dkim-signature;
        bh=LIM2EgnHNw+2MotO1bTmKF61OOHQ+TRSqKf/h/1ASfE=;
        fh=Ka9yIdhVvLkfRizpEGYqGUo6s6FQr8dGg2tdJFomd54=;
        b=Qfz4PBF8uQgMxNOiHAWk9a3hhJNY2w8n9I3LPcTJ2HLV6ZAimWdnzyE3u+87bGRMbj
         tqPUHWH7NzHXKzd8deQaoIqrGmDEeS/remb+QCDtbBtRD0HBju1zwScuIFNQ7EbSSHwe
         UdPOFIyKN090Piku/9pP17sCnAXFWvFnYyRbFos/X85t0fdzcIaqc2mDIz0RITrORx9S
         ZIBNVkcOS8+0gp36V5A/9WA6vQYo4zIZ6YGmzQMKaynOXbwfx48KyI0Yb1lMb7UO9pab
         hokplT+RBAYDRp9mOS2LnrqyWA6kIOUEKVUEiuDoEp1yVJNbMQwu/QzNsiPtTcZnHmCG
         pxIw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=QK5Jma2m;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711392801; x=1711997601; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:content-language:references:cc:to
         :subject:from:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LIM2EgnHNw+2MotO1bTmKF61OOHQ+TRSqKf/h/1ASfE=;
        b=gIoV+Naho2kYpS56KIFD++l9UgP9h5DSAY2oAIGb/Y20ez8hb9pMlMla8TalrneGCy
         xavema6s+s8XzbO959MAZVZ96Rgm5NXuFxIQNDKPWzA8swVyVgqv2Qkd4qqDlLWSOJ6j
         mN31EuzdK2FpFPPJ8naEcEVxGaO2bqEahfQEcEwEngaG04k7kSo5dOHjjJGp7fFVIGY8
         aK6mN/uDraTkTfXksFHciRIHpMmZTCoFKdklEYjvREdZ5Q1S0HTVp2BJxRmsqnBM3wXo
         5oOUbH1inYDdLJ/CiTRLnL91SMpq/Yr/Jn8WVhVt8DL+CAH21oV+JLU3zJJVgHlE8/+E
         xfSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711392801; x=1711997601;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-language:references:cc:to:subject:from:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LIM2EgnHNw+2MotO1bTmKF61OOHQ+TRSqKf/h/1ASfE=;
        b=X3luTJUkHkbesLQXtwapqAbuWOhg38FdAFcyGvhnPjashiUql3wYWHxrOhgSLXxo3e
         R2wlLpTuT+nQul1Sft0+R8gm5L9GwI5nlJ7wOslczvGDUF254TFKdCyD3i8PZ/OhJ5+f
         VKQ8lz20DRuN/hHCCzblCYryZ0Yq0nTnNBjdjMtU879G78bKmvuNvjHM86ty8INU+j2d
         WmDjNdOtR3KklNVV3kIpzhHvsZFp/AEzz2PR8rqfLznJpV+v92eHxYPmuHjKN+TxFagP
         FdyjtJ+fHmvgm4/Ov+phfDpVy1HQfOGUb5oyAh5GApDXBVHtBRtvGeCPeDnlwnRyo5La
         g7KA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWDNahu6lG2aNcTsyyzC2nguIIxbTTZRjx1ToWG6uDvNCfDe9b7OLi+7U6/m1kKvbAN4cXLpv4FdpCzpdLnhiNLYPuC5TvOk2U=
X-Gm-Message-State: AOJu0YzYPWRSu/gti8lEv4LefuaHVdXgSrgcQn30lAxoh5JzjmXCVy6s
	qn5+2iCr51Vc8Cv9/AHWzNa6Bb09Y48bU1IcE1ekx4egfnuKHvGK
X-Google-Smtp-Source: AGHT+IGDk/zKMzYTx9+QWhbyvfQekf6EkPWqWMdHdKhxgmUjvi/8lgb+Cmhw4zY1BzI5em3V0iAjeg==
X-Received: by 2002:a17:903:41ca:b0:1e0:dc6e:45d6 with SMTP id u10-20020a17090341ca00b001e0dc6e45d6mr1157941ple.60.1711392800792;
        Mon, 25 Mar 2024 11:53:20 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:903:11cd:b0:1dd:2b95:71a1 with SMTP id
 q13-20020a17090311cd00b001dd2b9571a1ls3503698plh.1.-pod-prod-08-us; Mon, 25
 Mar 2024 11:53:18 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWsnCFj0cgmW/7+MUxLvY5TrwCoXklYCCU4DN/2hm7vy61KWgt9rq1oZ+73eQ3f0jqIZ6JTcNl/qdAG9WVTX67kqknyc9j5Vl0dT+s=
X-Received: by 2002:a17:902:9a8c:b0:1e0:e6b0:b770 with SMTP id w12-20020a1709029a8c00b001e0e6b0b770mr166305plp.69.1711392797975;
        Mon, 25 Mar 2024 11:53:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711392797; cv=none;
        d=google.com; s=arc-20160816;
        b=bruMrFPajcyfwD28OQj8/9prCTMKuIZKG6mU7TsARsqx64xj8n7cSYj2RtClEecmiv
         Oz0mR6f2TVL/kihq0gyANYFrcEvhP5UUms7LmgoyoCjPzFjQ+FZ45CuzxaaRWZphtV0X
         zVwW6A4+Uw4ev6WCGD/LwOcxYtrHP7r6er+dR0kYhfoLEWYV48JST6RkwhbIVyLhTEnY
         6hU7YJWPTIUF7yfFySSCkFcdkfyMRkV4nGnPLBmlsdapV3JZVY5h3FxIdbeoq1J/UQWJ
         DVAQaIg+Rrp3Xseg1z8OymrDzpD51OSfVvZZuv5N4sqxIAchq4nFd+hFvl+DLofGoMG5
         s9ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=8HB8T+9QKi2BsmxvgtUg7ciBvTzwZx/p4zyHvH2zcwQ=;
        fh=cRKDJuJa9u0hSlN7//ZudFHOUpp5HnoCmCNQtGZd8OQ=;
        b=PT7WOLyw1FSiO2Kx4YhAiRbk5HBEgrTnhnp16SBBHt+8nnemjDlitnrzG8of9caz8D
         Pjqbj7agog9PKcuylWxKQeWdbOf2OnJZcQOoGLzZUvTTJyk4HLi/eF3IsDiDzNlukftC
         wGUztr84flLodHSmqnLqVT0NDoRGIuJlmrPKxyk0jv3D54KtluUNuWkRL3RIgJmOWlbe
         E3TIFcKXHGTvYSB1phrdmIURXEJTxaCm/rv+5rBdgX2+SQBfFgq4FGAYqB7C4RyJBpkr
         hUu7ZPrY3bUqvlT+V7+hdzeNCV/A0sqsa2PEmpr09/H35qrJcA6omA5sYEDX+X98BZ7z
         N4Aw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=QK5Jma2m;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from 009.lax.mailroute.net (009.lax.mailroute.net. [199.89.1.12])
        by gmr-mx.google.com with ESMTPS id jw21-20020a170903279500b001dd6f638c0bsi364480plb.2.2024.03.25.11.53.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 11:53:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) client-ip=199.89.1.12;
Received: from localhost (localhost [127.0.0.1])
	by 009.lax.mailroute.net (Postfix) with ESMTP id 4V3MWx3rNrzlgVnN;
	Mon, 25 Mar 2024 18:53:17 +0000 (UTC)
X-Virus-Scanned: by MailRoute
Received: from 009.lax.mailroute.net ([127.0.0.1])
 by localhost (009.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id O8IPN_-Z7MKH; Mon, 25 Mar 2024 18:53:15 +0000 (UTC)
Received: from [100.96.154.173] (unknown [104.132.1.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 009.lax.mailroute.net (Postfix) with ESMTPSA id 4V3MWt3k88zlgTGW;
	Mon, 25 Mar 2024 18:53:14 +0000 (UTC)
Message-ID: <1159bc83-f252-49fe-a15a-e0d0eb18661f@acm.org>
Date: Mon, 25 Mar 2024 11:53:13 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH 02/23] bsg: pass queue_limits to bsg_setup_queue
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: linux-block@vger.kernel.org, linux-ide@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, MPT-FusionLinux.pdl@broadcom.com,
 linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-3-hch@lst.de>
Content-Language: en-US
In-Reply-To: <20240324235448.2039074-3-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@acm.org header.s=mr01 header.b=QK5Jma2m;       spf=pass
 (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted
 sender) smtp.mailfrom=bvanassche@acm.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=acm.org
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 3/24/24 16:54, Christoph Hellwig wrote:
> This allows bsg_setup_queue to pass them to blk_mq_alloc_queue and thus
> set up the limits at queue allocation time.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1159bc83-f252-49fe-a15a-e0d0eb18661f%40acm.org.
