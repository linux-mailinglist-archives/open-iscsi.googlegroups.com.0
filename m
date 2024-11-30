Return-Path: <open-iscsi+bncBC65ZG75XIPRBVWFVO5AMGQE6WH753A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 450399DEFCE
	for <lists+open-iscsi@lfdr.de>; Sat, 30 Nov 2024 11:03:09 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id 5b1f17b1804b1-4349df2d87dsf24317715e9.2
        for <lists+open-iscsi@lfdr.de>; Sat, 30 Nov 2024 02:03:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1732960988; cv=pass;
        d=google.com; s=arc-20240605;
        b=NvpsrYnfqWP6fpY2CymhkfsD73ERGT8qnkiGDSw/9x3Xy0XoMkmRILcHj48rtmlNOU
         ggtKu3+DZ278CpT58CUNO4lPQ3pqG0mODeJVVRKmRu4bJKVUoZtWx1IZ/e9Dus+0JVRf
         qeV3npEsvuWHc0Hzd/vy0gFCQXbt0VRcyCzB/h3y+FhL9YLQcwJzQL7GEkS33MsLh2tw
         7KISS+ZWO2qmFmyPnUiHbOJsMqC3o+p366oorARVZ+gwGKo2QQ0hlWmaK/rUj55Ig/U4
         19/Vv3ZR4y6/iQ6UkDaI0PzqnstHy/nsVUEwxx2HSgL95fhsCEmAbTiIF0f7dlSfzEzF
         L8gQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=xYNp+wGbhQ3P7SwqmyEfA2uToZMLfWf3VSLgW+bvwjc=;
        fh=rlm/Bqua7YxuTOSkyawuj7ATX91DRm8+YjHI3NqmI5Q=;
        b=lEzm0H7LWLI0KgpNerYZySERxLd8hiQzKHiO/wtAwscT9qetqjcUR080/V9MlwKm/v
         KqZbPHjXumVX+cXHXv4fmdAEcxWoSYfzDoXBeFH97/qPsYXWHE63XSCHBOwfrQi0VtNr
         UabmfuWgrg95mFfOXUrIpB5VfZSIHVHtMjjMFeR5D40K1mD0j0jFJlQ+5v2KGq2xCvip
         OvQKixlp3Qlacy+vr2X+S9axHHcn4uHQ4wOg1ok38IX0BNyJRpueoNw30MLrmjvLXeeV
         6yayhhJHOwvCUFdD9METr3ZcoTFx0acF1PDYJPha/xJRzWr6EKThYvhQqchuhJZx5u2o
         jPlA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=atJBIeLa;
       spf=pass (google.com: domain of dan.carpenter@linaro.org designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org;
       dara=pass header.i=@googlegroups.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1732960988; x=1733565788; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xYNp+wGbhQ3P7SwqmyEfA2uToZMLfWf3VSLgW+bvwjc=;
        b=Sd09FeHnHYZWY4xDwC1d6MwI+FNWzDF1FOFTytHexwjOrgkVGdVE1nPlJmlPSOa5jn
         uwRbOnm3/x4eSk7ZeI6USYD5Blm2rgzoi/LZmJcUfkMMQhkNYJziqFMi1OznGI3SOHIi
         wNF6omoXGwU/6bab73FlPxDHuUTrvHl8LOve1nORtElvPIx3ydmMyapXppm9VLfgv24J
         O1EmR+9qkYLcwCI6KxpyZMiC9z3KLzvkBzrtQBghNqMXUobBmG/uH0Bj6HLep/3MXCDp
         LIDhH66ppvueGxOsnaY1waYcoFXZ6PRF/DdQXPvz/+wQBkRrSbnYdIEqRJUWlbBWLlUW
         VDyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732960988; x=1733565788;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xYNp+wGbhQ3P7SwqmyEfA2uToZMLfWf3VSLgW+bvwjc=;
        b=w9ioKqk63Ye7WFLk9D9NoK1QvI6NoMf3aE9wf+9HeHEfjInGOgeX8qqpxWp8D7RJhD
         0SaFXuyE+LxqP3funFIZyFOkEmMSnCjV2+Qe9W6nA+Uqbn1beZQXMzSXMN0T5dOsLYB6
         3vGrYNBqG/g7lrEFffecEi6sS7flaYRtaNsRhL1/FYaivOXiIQ00MuwNJsXoH4SQL5v5
         k9a5Gx38zmm6Lxy88xM0uMq+Q7qRN42zZlXbeN43ht7oB6zF1ZcqtwgdzpUMu3tLn3eP
         5wPa/IhDKBQca3/xb26ZP5ZC2l8d/YXUTUSznWBckla+i99pQSZBMBPpOTCPydEuYsk0
         T2fw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWyy56foV2F6bELyL55erP6Bs/vdbHlOw5CGZy1M4lt9ygj32WyVupggxB0MrJ77HxieYUj2A==@lfdr.de
X-Gm-Message-State: AOJu0Yw8gTlYIgvOq6NzWnAvWI2vrQD9iXzeHfDs4Qn6OmHbFNvJ9Fzy
	yBVABeqALGpUNUWg91yK4FBCoOX55PzNUNaddE0Kb6lr+p5iTlfw
X-Google-Smtp-Source: AGHT+IGN2x5KlhtMJYvN/UrKYwnNwy6jo9l2r+M6feeZ9VuR8PKE2hviiut0YvbqJ6rMDiGUEBUioA==
X-Received: by 2002:a05:600c:3590:b0:431:5f8c:ccb9 with SMTP id 5b1f17b1804b1-434a9dcf254mr180871705e9.17.1732960987940;
        Sat, 30 Nov 2024 02:03:07 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:190c:b0:434:a059:b74e with SMTP id
 5b1f17b1804b1-434afce9494ls1113695e9.2.-pod-prod-05-eu; Sat, 30 Nov 2024
 02:03:01 -0800 (PST)
X-Received: by 2002:a05:600c:5493:b0:432:d735:cc71 with SMTP id 5b1f17b1804b1-434a9de8e1emr145656435e9.25.1732960980875;
        Sat, 30 Nov 2024 02:03:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1732960980; cv=none;
        d=google.com; s=arc-20240605;
        b=fCiDbXuB3jjxjMQKIBfEOT69+yCqB8lo/SURPZKouWTW7vmoOWdi1DORZPd4lCeRJu
         yiVDU9onPESRqPut4wBfLi8LvOW25R1orSJ1J30x9J4dSm6b539t0K2gzuhJ6dHISFYS
         N5F8NEudiP7BxjSN+6zo12b6eGomU8kX2odDpjpAaD/o+5Db2TbwCJwVbSlUZNv8Y9RQ
         WKoG8PPfMGcY9qSUILqKDKz/ROpVWS1movnHixUu3L3EdIaUZ2CZV+veYwFOCEAsaBoL
         THBfEzmtFGK9mWE5O1dnx5wMcFfq8tUeRsebPgPOmI2qj3mXnimiD42axhp+CzUIa12a
         2GSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=tUSjny8lV8zXEJCshKiN4IFoow0xfVyMjpOxrIHAZpI=;
        fh=lpDwMhjHjpBURYt2fOrQk21HLzKlVQu+DXoMttAO3PM=;
        b=U7bqHXJovO2SO8Lp4dv4ojckKnfLCa4DeI2ol/OUE5syF3N4Sl0sTe2GBLMCtucaOY
         MCODU+72GZTBno9TsfY/V8bLrZHCCWW2ngiFr0FBez8QpNAVdneDU/Z3ixFymzasZ38G
         1JnnXwC0jUWtMpVBhmCp4JmO00u3sysgtuCjWyaVGEC1xII9Ohgbxq7roWv8dVTNwwjv
         IL09hqV869uGcEnQF3F6Xsr4i/xhLMez8JAThqACsrp66i3kTK6d2Jr6OtWnhAzpkP7q
         z1oUA1qcN5UyhDdYxr/JIWCKCvVp+ynqFbI/Z/ngvODwiqx8ifKPSgAdmYcF/wshdFJY
         5+YQ==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=atJBIeLa;
       spf=pass (google.com: domain of dan.carpenter@linaro.org designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org;
       dara=pass header.i=@googlegroups.com
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com. [2a00:1450:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id 5b1f17b1804b1-434a972ae69si1755625e9.1.2024.11.30.02.03.00
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 02:03:00 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@linaro.org designates 2a00:1450:4864:20::42c as permitted sender) client-ip=2a00:1450:4864:20::42c;
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-385d6e36de7so1926626f8f.0
        for <open-iscsi@googlegroups.com>; Sat, 30 Nov 2024 02:03:00 -0800 (PST)
X-Gm-Gg: ASbGnctGlKPJ5OjVkac76dEa3fIqcFW5HgNwZtQQD/lXaW75nQQCQzI5NsNinGBCJYR
	75fg0eDV1g3Uv9Su1jY0ICD5GcS85CKHWnmumj0sPNMaTucHbrcs+patfhUBkU/QwlJLH0jzuEx
	eeSlVmgGVWOgFZf79HQci2jYMaFLy1kTWHHM1AixvfHiDiF+mb/hT6nSL+FqUbHCsqoOpxOBgRn
	nD2pPHt5chgu1aJk/FBuRRLOXGsMsouxfrOhKFx7noGKAKuCIw82dAI6LbrpOF5y0kkWaOt
X-Received: by 2002:a5d:64e9:0:b0:385:e8ce:7494 with SMTP id ffacd0b85a97d-385e8ce75e1mr693291f8f.31.1732960980289;
        Sat, 30 Nov 2024 02:03:00 -0800 (PST)
Received: from localhost (h1109.n1.ips.mtn.co.ug. [41.210.145.9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996c11d0sm261875266b.16.2024.11.30.02.02.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Nov 2024 02:02:59 -0800 (PST)
Date: Sat, 30 Nov 2024 13:02:56 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Nilesh Javali <njavali@marvell.com>
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Subject: [bug report] [SCSI] iscsi_transport: Add support to display CHAP
 list and delete CHAP entry
Message-ID: <01b69135-e06b-4797-bb3f-95e537e06689@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: dan.carpenter@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=atJBIeLa;       spf=pass
 (google.com: domain of dan.carpenter@linaro.org designates
 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org;
       dara=pass header.i=@googlegroups.com
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

[ This code is obviously really old, but the warning may still be worth looking
  at.  -dan ]

Commit 6260a5d22122 ("[SCSI] iscsi_transport: Add support to display
CHAP list and delete CHAP entry") from Feb 27, 2012 (linux-next),
leads to the following Smatch static checker warning:

	drivers/scsi/scsi_transport_iscsi.c:3341 iscsi_get_chap()
	warn: potential user controlled sizeof overflow '56 + chap_buf_size' '56 + 0-u32max'

drivers/scsi/scsi_transport_iscsi.c
    3319 static int
    3320 iscsi_get_chap(struct iscsi_transport *transport, struct nlmsghdr *nlh)
    3321 {
    3322         struct iscsi_uevent *ev = nlmsg_data(nlh);

Smatch marks nlmsg_data() as untrusted.

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
    3340         chap_buf_size = (ev->u.get_chap.num_entries * sizeof(*chap_rec));

This warning is for 32 bits but it affects 64bit as well because chap_buf_size
is a u32.  Potentially this "ev->u.get_chap.num_entries * sizeof(*chap_rec)"
multiply could integer wrap.

--> 3341         len = nlmsg_total_size(sizeof(*ev) + chap_buf_size);

Then nlmsg_total_size() has some addition and the + sizeof(*ev) as well and len
is stored as an int.

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
    3362                 evchap = nlmsg_data(nlhchap);
    3363                 memset(evchap, 0, sizeof(*evchap));
    3364                 evchap->transport_handle = iscsi_handle(transport);
    3365                 evchap->type = nlh->nlmsg_type;
    3366                 evchap->u.get_chap.host_no = ev->u.get_chap.host_no;
    3367                 evchap->u.get_chap.chap_tbl_idx = ev->u.get_chap.chap_tbl_idx;
    3368                 evchap->u.get_chap.num_entries = ev->u.get_chap.num_entries;
    3369                 buf = (char *)evchap + sizeof(*evchap);
    3370                 memset(buf, 0, chap_buf_size);
    3371 
    3372                 err = transport->get_chap(shost, ev->u.get_chap.chap_tbl_idx,
    3373                                     &evchap->u.get_chap.num_entries, buf);
    3374 
    3375                 actual_size = nlmsg_total_size(sizeof(*ev) + chap_buf_size);
    3376                 skb_trim(skbchap, NLMSG_ALIGN(actual_size));
    3377                 nlhchap->nlmsg_len = actual_size;
    3378 
    3379                 err = iscsi_multicast_skb(skbchap, ISCSI_NL_GRP_ISCSID,
    3380                                           GFP_KERNEL);
    3381         } while (err < 0 && err != -ECONNREFUSED);
    3382 
    3383 exit_get_chap:
    3384         scsi_host_put(shost);
    3385         return err;
    3386 }

regards,
dan carpenter

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/01b69135-e06b-4797-bb3f-95e537e06689%40stanley.mountain.
