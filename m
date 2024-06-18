Return-Path: <open-iscsi+bncBC65ZG75XIPRBCF2YWZQMGQEJGVEOWI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E2690C5EF
	for <lists+open-iscsi@lfdr.de>; Tue, 18 Jun 2024 12:10:20 +0200 (CEST)
Received: by mail-ej1-x63b.google.com with SMTP id a640c23a62f3a-a6f4a5f7d4fsf283391866b.3
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Jun 2024 03:10:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718705420; cv=pass;
        d=google.com; s=arc-20160816;
        b=eeAkhxBClFv39fhSO0NenR8SnpyqrL6XsK8EkKXyXnpRCTH/MYRDHmJ4lvyNNS3P7m
         0RkpOLMQoKGiQ8H7KESc79ncog1z8i3vCb+kr34oMGRe8LRM4Hdiqm+5jiYzhaylDBZ/
         J+XSi+bMxanF2KfyecOhQNIAzxbEH8+a1dZMx6A3BONMuy+KGyO8b5BM+xc+rUrEV3MW
         7HV92+eK3z5q1u+/ElNypNSXDvHaNubDDhcvJHlA4FUicSkUYlUcHDcEd+eHM5lzEdD2
         lm5ByvjJ7kqNglOerZiwKmLbwhwoCwpML+R3+dw43C/xTFjYZ0mdWSoLDFdEwvS6wF2x
         gMNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=y1b9LvivscGGtK6o5wUvc1NliEKjU1fQmgTYn6y7AcM=;
        fh=UppNy2N6MV8DXomrvEkYkSV7MqNFGZtCaafLUCtPimU=;
        b=xx1T+5S58Xg6VsoRj2DYZloB7Nfou3vIjZWXAh71OnGCok1xErzTX6Li8llPxxeOkW
         xTc1wHBaLjOFlcw76INiPv0f+WRO8c3EodoUMeuZ/jjoYN76za0wXfgs2dd9tSZaD8mb
         xjo4VrmKULRTZDWwlzTylgw2jXHPtp0653f+GHu7Bo079yym0iB2ZoeYnG4RQpdSnQte
         AoOVEvojFwU1L0zdngg9lTu8NLn5cF1JAQqzZkwSjP3wO3PSPJnExeCksiBZIybEkr4u
         OOV/oc7CdoCXReOaDKQxnk8S/F1qfUKY1jP2sllzNewPTC2Vumd3OQAuK1XSHfMp93oL
         gEVA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LakNLQ2n;
       spf=pass (google.com: domain of dan.carpenter@linaro.org designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1718705420; x=1719310220; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y1b9LvivscGGtK6o5wUvc1NliEKjU1fQmgTYn6y7AcM=;
        b=eAFjYdvo9TQRwldmh8DtoULkLTORnaJShxj9WygnxEw6g299zfOy2FH1mZ9ajzBjpk
         WrwxXVjAG8M5r3X5cvsgwhZK5sMVej+1oLFS+rhZTdPJH013ISMyQEgzVZAb1b6ncBp9
         RFL8JR85TTKQEfcpP5x/mT6h3neHhWIFXI3v6B1ejXivyYh5N+nkZqy/rhCDigtszRqf
         kos7KYMhK7hlNzM79xOkG225A/9pey3OdG392KhrnGPUII7Jdw+AMkXAr/Jfpx19OCO7
         z0qJleDYmsuLoqx0k1JhRqD9c+oOLnL2Vl2bSdypPvWl6IHPIfZF6vMe2nOtVa+DrxjR
         eCJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718705420; x=1719310220;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y1b9LvivscGGtK6o5wUvc1NliEKjU1fQmgTYn6y7AcM=;
        b=CNZrvtV5Eatjtuzl5K59E3DieImavxmaVfNs/veqxXPBHnngwtL+EZhyDTBievMR+c
         LJlvS6viUsUT2sL2abrSKaRkxNnePBrMcambPf/UGOQl7YQ1ZeCek1rhg/bnyDcyzmfk
         oShxg82dHx5RQ4f+WyGf1BXrNYFecqEBurcOt6CnLGQOFYDsGkJoHft66RT7lFZOaOIw
         mY74aGDXgXd3K2+ehGdoGE+tD0fzr+JhCH4oUPhz+MzGdIaVDODNFb38f29HudIe5CGZ
         ftElkdUO8DS/AHuA+wwjKodvqO9SkD/0fQVvvusDcF4LHxQHTgKvMYrOBwjkqmutQNSf
         2lEg==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWbpVq5IzREHvoswwEQR5p1yftnluImYv/jvVTfj6eQArQqwxw/pgUg+oZ4qEavuym8Ce7Gh3AXz/Td1EXWbdTqrrf/Ou7FiEo=
X-Gm-Message-State: AOJu0YyIY5hhGL1J4jJ5Jo19M470Pr+syTaUD2l+otG+lVZunNEqdbfl
	Gf+cQJ2lzvM1X72wNDHCB+MtIvjULcsJ3EkjCfYmyqhVdCr1odMT
X-Google-Smtp-Source: AGHT+IFZe2xtUEUtCww7Vc0O0Ltd8ktam6MT42/pm4hDiAjuUhyg2yW+v3TAYa2YbnZprmyGXPDTvw==
X-Received: by 2002:a17:906:389:b0:a68:ef5e:a500 with SMTP id a640c23a62f3a-a6f60cf334cmr733127266b.1.1718705419397;
        Tue, 18 Jun 2024 03:10:19 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:4307:0:b0:360:9396:6c64 with SMTP id ffacd0b85a97d-36093966d68ls754918f8f.1.-pod-prod-01-eu;
 Tue, 18 Jun 2024 03:10:14 -0700 (PDT)
X-Received: by 2002:adf:fc82:0:b0:360:79d4:b098 with SMTP id ffacd0b85a97d-3607a76609emr7365106f8f.29.1718705414048;
        Tue, 18 Jun 2024 03:10:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718705414; cv=none;
        d=google.com; s=arc-20160816;
        b=kCezLqrFNgPfdmWQJPNmrA8EHxposeNcsIvrYIBSYTzhPSd0SDIpCdR/Un0bsHLtMH
         U7r3ZQzaZL4QxHKE3yHEKgNARsVRKkiTrAi89jCOLGGrH+X+nYWq63jc0TsSzcdndgFZ
         V1eVOB9RGH3OVNlLjmyzKBQX5SlJzJL7GP4TLiTiasLani/0gzr5JRV3TmYtxUA2pr3j
         lSZBKD/2PLBaacrIRrLgQCIvT2i2u9/HKUhEsCDkdo8Lj9gFrQVzrsEXbH5xUDrIo30P
         +9qxV3hwWl2b/xw9L6t4pA38kR1FDOw94PAhCRgnGHBGIJOGycncw15+7K51skP/UeMh
         6VVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=nFv+H+J5KVtQDId7j7CojiPG2lRqqZRtUi9PX0uMdRw=;
        fh=KM5jE+lhKIe9Xvy1y1JA8uKqbOFiKGNnWqhvCV7Cb/s=;
        b=qkUinagIUCiyESTuDdIgBPnpr+Ztc5bUmXiYoafzTR2uOn8QYoZcX4PfSgRGA80HzY
         /PRBB6bLrkcJkBpwkpfJdNr1PwYHDLLqEW7EDegyFQa8uk2D54Fd6zvBl95i5ie4sIkt
         9lObCuQN1qR16B0PhMWvKdTpSWyLroYv7iFIu2p0y9mfwWiHE9pCEj29IguD9+f2fmOD
         lu8WQG5jAnNZSHUbTiE3C+O3YwKKBvlIgYaywOFNaTr9lzmpl7gCh4W43BcoPUprNEXz
         n1/0MUY8lepNZcNjf1ZSjHfWz1hLfZ8JjERqSzn0p+QBFRNVxj9mReiYH29R+i/+xYH6
         /iSg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LakNLQ2n;
       spf=pass (google.com: domain of dan.carpenter@linaro.org designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com. [2a00:1450:4864:20::330])
        by gmr-mx.google.com with ESMTPS id ffacd0b85a97d-360750edc61si257087f8f.3.2024.06.18.03.10.14
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 03:10:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@linaro.org designates 2a00:1450:4864:20::330 as permitted sender) client-ip=2a00:1450:4864:20::330;
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-42172ed3487so38445375e9.0
        for <open-iscsi@googlegroups.com>; Tue, 18 Jun 2024 03:10:14 -0700 (PDT)
X-Received: by 2002:a05:600c:45cd:b0:421:7eff:efb8 with SMTP id 5b1f17b1804b1-423056e01dbmr100092885e9.31.1718705413279;
        Tue, 18 Jun 2024 03:10:13 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422874de607sm222957765e9.34.2024.06.18.03.10.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 03:10:12 -0700 (PDT)
Date: Tue, 18 Jun 2024 13:10:08 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: linux-scsi@vger.kernel.org
Cc: open-iscsi@googlegroups.com, netdev@vger.kernel.org,
	Kees Cook <kees@kernel.org>, Justin Stitt <justinstitt@google.com>,
	linux-hardening@vger.kernel.org
Subject: [bug report] [SCSI] iscsi_transport: Add support to display CHAP
 list and delete CHAP entry
Message-ID: <a60ed02d-3191-4e9d-b296-0a961a81a66d@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: dan.carpenter@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=LakNLQ2n;       spf=pass
 (google.com: domain of dan.carpenter@linaro.org designates
 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Hi SCSI and netlink developers,

Commit 6260a5d22122 ("[SCSI] iscsi_transport: Add support to display
CHAP list and delete CHAP entry") from Feb 27, 2012 (linux-next),
leads to the following Smatch static checker warning:

	drivers/scsi/scsi_transport_iscsi.c:3340 iscsi_get_chap()
	warn: potential user controlled sizeof overflow 'ev->u.get_chap.num_entries * 524' '0-u32max * 524' type='uint'

drivers/scsi/scsi_transport_iscsi.c
    3319 static int
    3320 iscsi_get_chap(struct iscsi_transport *transport, struct nlmsghdr *nlh)
    3321 {
    3322         struct iscsi_uevent *ev = nlmsg_data(nlh);
    3323         struct Scsi_Host *shost = NULL;
    3324         struct iscsi_chap_rec *chap_rec;
    3325         struct iscsi_internal *priv;
    3326         struct sk_buff *skbchap;
    3327         struct nlmsghdr *nlhchap;
    3328         struct iscsi_uevent *evchap;
    3329         uint32_t chap_buf_size;
    3330         int len, err = 0;
    3331         char *buf;
    3332 
    3333         if (!transport->get_chap)
    3334                 return -EINVAL;
    3335 
    3336         priv = iscsi_if_transport_lookup(transport);
    3337         if (!priv)
    3338                 return -EINVAL;
    3339 
--> 3340         chap_buf_size = (ev->u.get_chap.num_entries * sizeof(*chap_rec));
    3341         len = nlmsg_total_size(sizeof(*ev) + chap_buf_size);

Smatch doesn't trust nlmsg_data().  ev->u.get_chap.num_entries and
chap_buf_size are both u32 types so it looks like this integer overflow
warning is valid.  On the other hand, hopefully, you trust your ISCSI
transport.

Then we pass the overflowed value to nlmsg_total_size() and do three
more integer overflows:

1) sizeof(*ev) + chap_buf_size
2) NLMSG_HDRLEN + payload
3) NLMSG_ALIGN()  (ALIGN macros wrap to zero)

So my solution was going to be use size_mul(ev->u.get_chap.num_entries,
sizeof(*chap_rec)) for the multiply.

I kind of want it to be a static checker error when code uses
size_add/mul() and saves the result to anything except unsigned long.
Or when code uses the result to do further math.  The problem with
this is that people like struct_size() and use it even when they know
the result can't overflow so this generates false positive warnings.

Also maybe we should harden nlmsg_total_size() against integer
overflows?

regards,
dan carpenter

    3342 
    3343         shost = scsi_host_lookup(ev->u.get_chap.host_no);
    3344         if (!shost) {
    3345                 printk(KERN_ERR "%s: failed. Could not find host no %u\n",
    3346                        __func__, ev->u.get_chap.host_no);
    3347                 return -ENODEV;
    3348         }
    3349 
    3350         do {
    3351                 int actual_size;
    3352 
    3353                 skbchap = alloc_skb(len, GFP_KERNEL);
    3354                 if (!skbchap) {
    3355                         printk(KERN_ERR "can not deliver chap: OOM\n");
    3356                         err = -ENOMEM;
    3357                         goto exit_get_chap;
    3358                 }
    3359 
    3360                 nlhchap = __nlmsg_put(skbchap, 0, 0, 0,
    3361                                       (len - sizeof(*nlhchap)), 0);


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/a60ed02d-3191-4e9d-b296-0a961a81a66d%40moroto.mountain.
