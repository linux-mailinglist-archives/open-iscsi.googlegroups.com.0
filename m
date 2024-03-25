Return-Path: <open-iscsi+bncBD3JNNMDTMEBBEHOQ6YAMGQE3RZKWKA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id E78E088B3A6
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 23:13:38 +0100 (CET)
Received: by mail-oo1-xc3c.google.com with SMTP id 006d021491bc7-5a05537c0b3sf3652548eaf.1
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 15:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711404817; cv=pass;
        d=google.com; s=arc-20160816;
        b=LkeKPCJM1LzAfZfrOp7wI7m5mYyQIxGJMrndjl0IwOkPSN+IMBZI+0Gvto66AAWcUX
         Z3dZnlWDtQogH1VIa+Ycp0PSI+QPxRTFcMB7xw/0JjokCC0Hv7ldAK2EB3NCeP8dndmb
         ahW61psqZqjSmB0NVN4bVvCytPTI5HwlSP3Dps6lTPD7/WBW/ljKaLQe3lsqdb/3ktjG
         9WrOoSfksfi4v1tDoKav7XkACENrC80YO7gAbB6vmpHxhsFl0xZmO5HGMnoycAg1XGFG
         s/0L1/BpCvWl4RgyD1w3RAexbzxOwQYvPaWmiXQPxontK/yTGh+IvbIUE7ejsPTbep2P
         OoIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=cZXEGfOaCe2R4JkIb7quwyiQFMb/Wxbvsudg2mRm3Dw=;
        fh=1kNz3gwYNzpIbuLwoEWDzCqd/wvCHMoMLaEU5owhoww=;
        b=CJ3uzDsW73rBshdyDSOwKq6W7A/4obyaDUQMnEpI+2dcI1A1mYst6k9IAdwzZQqH6m
         tApqndiJKK3jceOGaByFU8gHZVgZNIkPeHddI2T/yiovdGUDq4yJ3uMwRx6S5l/gE3cY
         7oBd1OIbIk/tSJ7STRtIYjHBTasYEG2vyi4P8M/gh4k9fdhLA1QOfdnAwKYuvtmBo6Wl
         eqG37dfTWHI2VUY42W+9uZAi9S8McSNOhnxu7Lif9l/nZP1Do1K4gEN4Sa3r33msF0aa
         /dUE2oFmDvE8Cy+krkQ6C/tv4SlpUTcZh96EjTCCeqX3+PVQ29fSy3TaiSHvgeItFkl8
         gM1g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.170 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711404817; x=1712009617; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=cZXEGfOaCe2R4JkIb7quwyiQFMb/Wxbvsudg2mRm3Dw=;
        b=Uh68EwWlUMFQGhiIsvhSA4yG+1BTnZ4DkYdei0uc0dufahlCRxKMROaEUzSj+NmeHH
         10Yq4EPN5SWNa+dKpPDl7ze/Sz1mx6a/wnv/GnAVKQ1SL55nvr/GjWQ1LjZ7PWYvAixr
         2Nwnchb3X42qZUe0IcT2IAr/RnPlTPm/SWaS1bibRzV3e88LwzgAmK4hjrZI3mav512i
         LC+R8Ozn02Q+16RsfIGtiYKjloBM4zp3JUZuZeewr9ukUz7pw+Yy8esBSFWfjRy+Mlp+
         kVGXnfz06MPrEw3+l90Ul3vN7bOR/FNQzSiKgUJZWXD9xyGFtstjxi0/OK+M38x5067s
         UBRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711404817; x=1712009617;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cZXEGfOaCe2R4JkIb7quwyiQFMb/Wxbvsudg2mRm3Dw=;
        b=hqIneF9hUNyNpwT23ouVZjWF4kl8PemeRCEu4H+0pymrMX6syCPbA7aNBpeoavhtSq
         KTzGqhMgwK8/lQramFWmJA3ix2xuAtLljbcvwNMiUnB5ujvlpzOr7aJgq+i9IVGT2TES
         bk+6yOvsyYHEmWD/D3y+vml2jO1DPXrQE3eJh1d3wRzLFerleGrr+C22Kd35INjSYyDt
         1h/zZxIQOPd/vS5rGxlFK0ZESS3i9r9YVqGKWqV5M8tZYDRzf+DlaGI8CCxNNPUUbrrg
         dne0KYASkChc7Ph0YIGpsgGEShxo9oIasPIDI6iK25GWpqWX5osrjlo3tI03aJWpBSMZ
         Co7Q==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUSimYXo3Q74BPwj2lYm2QPKWA2BWDBAwQMg7mJoMeyTWZsouLKieKEA8qwTEzNjNuUakXhbnC26TvTRNN2oVgiGkZGr+vHSyY=
X-Gm-Message-State: AOJu0YxmD3wSnqAXK4VjT/2Nqnq0WUdxTepKilJcze5KBEVDvr9IPOBw
	4BNAXjbEYzxfueVxobv0vp8B6ZnoGQICm9rzsz3/xrd4e3hFR8Fa
X-Google-Smtp-Source: AGHT+IH3slz5SSG1NGj2kFnzSfZo9hIzTxwc4c8j1kdWNa1Tfl2j4QCWlQaIs5fy97KC8Z3nhnQdXw==
X-Received: by 2002:a05:6870:9a1e:b0:21f:d4ee:ae01 with SMTP id fo30-20020a0568709a1e00b0021fd4eeae01mr10030111oab.18.1711404817659;
        Mon, 25 Mar 2024 15:13:37 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6a00:a12:b0:6e7:3570:3cb4 with SMTP id
 p18-20020a056a000a1200b006e735703cb4ls3366051pfh.0.-pod-prod-05-us; Mon, 25
 Mar 2024 15:13:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWvQJiXPcr8WZulIWKn9Ix0xOa666UkBlCT3uK0aI/+l6HtEA3B2yPK8Of/kgsgqLUAqVSzSU1OULvu+jUGDxYYwxjyV0FE9I5KPdc=
X-Received: by 2002:a05:6a00:2e29:b0:6ea:b1f5:112c with SMTP id fc41-20020a056a002e2900b006eab1f5112cmr2802814pfb.27.1711404815088;
        Mon, 25 Mar 2024 15:13:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711404815; cv=none;
        d=google.com; s=arc-20160816;
        b=z7xK2n6yWPMYSnvvktQn6MbcaRAopzG1XDF3Bd0gygKqsZb4R0WI6UsKW/r5zC3I/d
         JJ85kf3w8jN1iJF7sJoyik9r6rHKn+BWM2ueVjY/GXVyipgREc7/Yox9NbCRFEQCqUXX
         xT7YmbxpTNmr0VjG6/FVaXOpmBlU6UG36QJRzgC4C/+56NEflq480RuEtprHjZ+Z+N8W
         5ppLw3BaEfxyrxVh+eGEr2WFOunS+Ap9w8HSBb6u+ToRjmwPbt9coW6zgkFu16/pitIB
         2V64SdaIneeWrmphgAMcomZKK6wQJVkFKlHTqvDABDsgL166SP9vRpS3UGjEW+PlZ/ys
         PSSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=lY9FIntr0nkvHSL2c+KUE7nnc9/NyBweIhAGiFvlGMc=;
        fh=Vh5HK6zjQ8khr7WXwE3BScnJWI+JqImU07//jyc4Eiw=;
        b=zujw2yw9Zq79tz4GBrtpRuNHRW+IATpaang7Ucb4JWp9tc45aULv2aphCnAHD5uys4
         GJ8B8IyLKHuvRWL7SqY5j20NC5f/Pa480SZwa1MhqzDvTj1Y0IKXp8zytmXLryLtlOXJ
         W+mloCIVUhA7Bwhh9dVFmCfGb/icSFJSDA/RuWNOBaSEITeYtbzK5HaRMbT2VwB3un49
         E4EK0RzF3x8Q3od0jO4UV2RazbavItmWYGOONs1td17ua77PCG1vSzuKjbVqi/5HTarF
         KrjOrLXiBELMFIjPEFRqi+7/Ha45WpsbbyBLrr0P6qT+7oLXtRq+viR6KZ6KXFmLjRWU
         k5YA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.170 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com. [209.85.214.170])
        by gmr-mx.google.com with ESMTPS id 65-20020a630244000000b005e4310c3b74si645818pgc.5.2024.03.25.15.13.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 15:13:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.170 as permitted sender) client-ip=209.85.214.170;
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1e0bfc42783so9713775ad.0
        for <open-iscsi@googlegroups.com>; Mon, 25 Mar 2024 15:13:35 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUvyqFbJus8LO6cSxS1kXf4zDJ+JnIP2NmcWFIm/AcXuV7jFibR2NCa0f9ka9+3cVt6Zy/b9IsLVNstx/9zsBCFDDUOXZECM6Xtbl8=
X-Received: by 2002:a17:903:26c9:b0:1e0:27c8:5c7e with SMTP id jg9-20020a17090326c900b001e027c85c7emr7288051plb.25.1711404814659;
        Mon, 25 Mar 2024 15:13:34 -0700 (PDT)
Received: from ?IPV6:2620:0:1000:8411:262:e41e:a4dd:81c6? ([2620:0:1000:8411:262:e41e:a4dd:81c6])
        by smtp.gmail.com with ESMTPSA id v17-20020a170902d09100b001dcc18e1c10sm5273962plv.174.2024.03.25.15.13.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 15:13:34 -0700 (PDT)
Message-ID: <47028fba-7fb0-4eda-81a2-ccf439cfec6a@acm.org>
Date: Mon, 25 Mar 2024 15:13:29 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/23] scsi: add a dma_alignment field to the host and
 host template
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-8-hch@lst.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240324235448.2039074-8-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.170 as
 permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=acm.org
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
> Get drivers out of the business of having to call the block layer
> dma alignment limits helpers themselves.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/47028fba-7fb0-4eda-81a2-ccf439cfec6a%40acm.org.
