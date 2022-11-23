Return-Path: <open-iscsi+bncBDRZ7N5GYAFBB6FP7GNQMGQEN4MM7OQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C176366F4
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 18:27:22 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id az40-20020a05600c602800b003cfa26c40easf1977239wmb.1
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 09:27:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669224441; cv=pass;
        d=google.com; s=arc-20160816;
        b=OLrt/Etu1t7uTsmfoZgMROBFJWP+U5qXO8vG1u6ahnBNPRl8TEEVRZlk2Pztib8pNO
         fSunS6D6eE06qGvBXPbjvgFHO2IkBYxb+kcxx7ct4GLgc5pQuKXRQDBC1FP4+lu68dr9
         ESOiZHHoi7qKhLe/7VK56jrgKctQ9/YIa0bbNY1lMsyhB3vU7SlvgLm6cnDvOc35DofA
         EXlqgwCKCCAQVgRC15haXhrlZw+kqD1O0vAgDcZvteAwAGElpy/QXdKhv3kYkd5LPQye
         MUg0MVBNHBjjse9Wa7f9ogmycNjtQGLjGpocRqVpUVlVWv6z01EcqMJhj6GauINzdtz5
         cuhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=zV8Vkner/lNClVrhw+Hf7aBuvTJ1ONiYTqeJznoRFqE=;
        b=NXFXVVvukopXPrx/V8spwMgnl6tbDFIc/ZqKId6iBgKaASP4KJnqXUAJSe9px63tXp
         P5WZHTrXFm5wMcLHHM3TCcVZLiCuAahquYzGUJ4oHYjNhWd6wKfvQMkxVRx6b4AIsAfI
         1lkQAyRzEWR1JdsyODb9u0F2LihW43szmdgw7T8HnTMP+b6Pi5f0zdGPucSPGICGe/5a
         jH3UEKugs3cxyXGcuHmxpxh3c0fCL1mCndzWBfUxOmE5e3BFzweyIiK8DpHHFCOi/m4G
         DB+W1t/lBtihrGZu+oEZrHI6vHNxCPiInWAW+39Gn54kgRiPxxgS8TMPbuAVtGvM53NL
         9JQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=JJxXgo3y;
       spf=pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zV8Vkner/lNClVrhw+Hf7aBuvTJ1ONiYTqeJznoRFqE=;
        b=jcafQEaedE2b7VomsiJZxd+389DCXtrO70CxDO+SfV8SjhNXWZSpodi85JWk65glDM
         4Byg5S0ofK40GLz0SrQugCS6jBkcQxmbDP492OGi3HAORbvh8KUFHili63i6i0xH26cR
         iAePOMEV4dFIdr9nidpPpCZU0ZupUxCXls41lx82lQzmGRfbZstcsAW2YRvgkMAUiZoE
         jqf458xGAyp1rGtCP33AGtjqu7mQLTPXyK2m2TN5mVDyiywYx8gLiMGE4L+xDix/FFr3
         iO5mwx0rxogA0QsiDa2V2jV7hS0G20eBF4HB076w9lU4LoR001Vv9OhTVpset6XEqRYe
         4PCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zV8Vkner/lNClVrhw+Hf7aBuvTJ1ONiYTqeJznoRFqE=;
        b=C3ns0G27t8dC99gEalIrE1xMz+3tCr+4wwngP9HE0LzHDFWOc4helBFiaovdDNzI2b
         7OTwceStpd+DDzx9+851UfQWlzJRrSrTUGTtumicerxESoVD9m2EzQJ1EZyX//l3exGJ
         Zb1w3tU/OC5J7mU3zUGLIGqp/dtG01Z/0tRmr97+ae/xS/cJlbGd9uWCSgpw0ikJo6IA
         30OLEh78xzO1deg9c7foz/JTBQnUT3doaXCBckDr/IelHbdzxhZcRHw9ytVHiqU13Bio
         xaVayC6vWxOWmiVU200tlKrkARSk+4T217VN8rxQK9wfzZmuTwIO/j/pMCEqQiVlbUe3
         NjSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zV8Vkner/lNClVrhw+Hf7aBuvTJ1ONiYTqeJznoRFqE=;
        b=FKtWMztxRwtkPZtEegLo0H0MbAtUD9quRS/LzpaUuae8YVV5aLIMI4vc/zNhh7dcjq
         uOy97Pab0SHVPhnpWibzOfTYVNjLq/6rqwDRmbGSghyxMkLjMnlyAO8aMJzx6uP9b+QZ
         95VuNywmrqW5G9Q9MO58QjTd8pM2mN114mtT7F3eKwQ+rIV6LUIb4tSEDvKS80Odogwx
         YbwYzpjdnEZl9GksoYFzVqhsJ1siXOWk3YApZUtBn6T9ClyYtotazfXVlvqhgpC6NfAE
         1l7n9egsvAWQODDTMRm0f41NVG6/lx8QjkIi6ZhZLlYWUygqvpxGT7qL29wOFQTRsEjF
         qa4Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pm907Jc42/Ju9QnvG1R5W9wK4J9JCiKFj4Gn1jv7iFN64D55Z52
	A7SAgPMbUUrR7NQLlC24rMI=
X-Google-Smtp-Source: AA0mqf4xFzL7r9Lr6q+l+ykLukgzjjRiHJj6tcLRvx9E0bwJfNAqi7U/sfRW50cp7I+oMicoxr2AGw==
X-Received: by 2002:a05:600c:1e25:b0:3d0:31c9:1d77 with SMTP id ay37-20020a05600c1e2500b003d031c91d77mr3382324wmb.113.1669224441727;
        Wed, 23 Nov 2022 09:27:21 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:24a:b0:22c:d34e:768c with SMTP id
 m10-20020a056000024a00b0022cd34e768cls3448794wrz.0.-pod-prod-gmail; Wed, 23
 Nov 2022 09:27:19 -0800 (PST)
X-Received: by 2002:a5d:4404:0:b0:236:657e:757e with SMTP id z4-20020a5d4404000000b00236657e757emr10168370wrq.350.1669224439421;
        Wed, 23 Nov 2022 09:27:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669224439; cv=none;
        d=google.com; s=arc-20160816;
        b=ZqnXhAIWU9YnY/OLoeBhZpZOBAkg7RE2sqmnMHQ3cGG75IjBdxBaCwjEbobpo3cWQv
         k5dbwkfihEsHttzyfjQItGgbE48UF1wA7tDltKflC/WZ9SfWVCMfnPOMy6eqOVodwT+2
         w/QGFws17rYvMWKT3ZshyJOQ9Bi5iNNDecM4MUumZwxlfUXPkZM3EjjmkAMZ4u4lII1y
         lZstPJ4BprMO06HOCDKAYs43Qv55GrdXCf2jztrXxEL2LcNm+k3mo2kUuqee56pRBzID
         hwrg74Q0kp+TZ+c962ySKhIArOqptZSIzQkLSa5SPEffps/n5dA21Ulabv+diI7s4gto
         d7FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LISItnRSTvcc0povFBg+PbTpRnC7j44ZzvAZO+Dheig=;
        b=LmzEALZD2jvLizSdpj1RdmXBkG5NdpptHkniYWgKQhG1pQJSzgbPzTaNFEtwCm7SXC
         GsrWWkHbIA2XHqIplv5VMNA2brvpu5LBeDAljZYrPxiq2i9/1nV7XvWZ9B1A8JlPGZnj
         0ARtI3F7p+ZINcZTa0zeaUYsW+NylGvu5UVcKqvvI2+nuMJpx4zFvFs6Auo/tNhPyygp
         SkGlkBZyrCjwINby+6ZCI/6l7U2eAwXD/Y1i0IlafydyLiT78aSf3ckOH2F6Aq2vOpNa
         9ZnpRphx6/PFjocBP3xSHZSjZdHIwV9K/D2wxfuMvrJ/KRuTS41J2z6fCjQZvcd+TcxU
         HrUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=JJxXgo3y;
       spf=pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com. [2a00:1450:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id by5-20020a056000098500b00236e8baff63si701773wrb.0.2022.11.23.09.27.19
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 09:27:19 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) client-ip=2a00:1450:4864:20::62d;
Received: by mail-ej1-x62d.google.com with SMTP id ud5so44307475ejc.4
        for <open-iscsi@googlegroups.com>; Wed, 23 Nov 2022 09:27:19 -0800 (PST)
X-Received: by 2002:a17:906:e0d7:b0:7b9:a74b:f16a with SMTP id
 gl23-20020a170906e0d700b007b9a74bf16amr3881668ejb.192.1669224439001; Wed, 23
 Nov 2022 09:27:19 -0800 (PST)
MIME-Version: 1.0
References: <20221122213040.4128105-1-haowenchao@huawei.com>
 <4d21f806-6653-5457-918c-563a3032d128@suse.com> <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
 <0f7258d5-ff8e-fa4e-ab8e-5125c42a6d07@suse.com>
In-Reply-To: <0f7258d5-ff8e-fa4e-ab8e-5125c42a6d07@suse.com>
From: Wenchao Hao <haowenchao22@gmail.com>
Date: Thu, 24 Nov 2022 01:27:07 +0800
Message-ID: <CAOptpSO=BEGWFkzT2umFXnWSyn24XR5nHc-mnTvsVb6PAn=4xA@mail.gmail.com>
Subject: Re: [PATCH] scsi:iscsi: Record session's startup mode in kernel
To: Lee Duncan <lduncan@suse.com>
Cc: Wenchao Hao <haowenchao@huawei.com>, Chris Leech <cleech@redhat.com>, 
	Mike Christie <michael.christie@oracle.com>, 
	"James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>, 
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org, 
	linux-kernel@vger.kernel.org, liuzhiqiang26@huawei.com, linfeilong@huawei.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: haowenchao22@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=JJxXgo3y;       spf=pass
 (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::62d
 as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Nov 24, 2022 at 12:51 AM Lee Duncan <lduncan@suse.com> wrote:
>
> On 11/22/22 20:41, Wenchao Hao wrote:
> > On 2022/11/23 4:00, Lee Duncan wrote:
> >> On 11/22/22 13:30, Wenchao Hao wrote:
> >>> There are 3 iscsi session's startup mode which are onboot, manual and
> >>> automatic. We can boot from iSCSI disks with help of dracut's service
> >>> in initrd, which would set node's startup mode to onboot, then create
> >>> iSCSI sessions.
> >>>
> >>> While the configure of onboot mode is recorded in file of initrd stage
> >>> and would be lost when switch to rootfs. Even if we update the startup
> >>> mode to onboot by hand after switch to rootfs, it is possible that the
> >>> configure would be covered by another discovery command.
> >>>
> >>> root would be mounted on iSCSI disks when boot from iSCSI disks, if the
> >>> sessions is logged out, the related disks would be removed, which would
> >>> cause the whole system halt.
> >>>
> >>> So we need record session's start up mode in kernel and check this
> >>> mode before logout this session.
> >>>
> >>> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> >>> ---
> >>>    drivers/infiniband/ulp/iser/iscsi_iser.c | 1 +
> >>>    drivers/scsi/be2iscsi/be_iscsi.c         | 1 +
> >>>    drivers/scsi/bnx2i/bnx2i_iscsi.c         | 1 +
> >>>    drivers/scsi/cxgbi/libcxgbi.c            | 1 +
> >>>    drivers/scsi/iscsi_tcp.c                 | 1 +
> >>>    drivers/scsi/libiscsi.c                  | 5 +++++
> >>>    drivers/scsi/qedi/qedi_iscsi.c           | 1 +
> >>>    drivers/scsi/qla4xxx/ql4_os.c            | 1 +
> >>>    drivers/scsi/scsi_transport_iscsi.c      | 4 ++++
> >>>    include/scsi/iscsi_if.h                  | 1 +
> >>>    include/scsi/libiscsi.h                  | 1 +
> >>>    11 files changed, 18 insertions(+)
> >>>
> >>> diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infiniband/ulp/iser/iscsi_iser.c
> >>> index 620ae5b2d80d..778c023673ea 100644
> >>> --- a/drivers/infiniband/ulp/iser/iscsi_iser.c
> >>> +++ b/drivers/infiniband/ulp/iser/iscsi_iser.c
> >>> @@ -947,6 +947,7 @@ static umode_t iser_attr_is_visible(int param_type, int param)
> >>>            case ISCSI_PARAM_IFACE_NAME:
> >>>            case ISCSI_PARAM_INITIATOR_NAME:
> >>>            case ISCSI_PARAM_DISCOVERY_SESS:
> >>> +        case ISCSI_PARAM_NODE_STARTUP:
> >>>                return S_IRUGO;
> >>>            default:
> >>>                return 0;
> >>> diff --git a/drivers/scsi/be2iscsi/be_iscsi.c b/drivers/scsi/be2iscsi/be_iscsi.c
> >>> index 8aeaddc93b16..a21a4d9ab8b8 100644
> >>> --- a/drivers/scsi/be2iscsi/be_iscsi.c
> >>> +++ b/drivers/scsi/be2iscsi/be_iscsi.c
> >>> @@ -1401,6 +1401,7 @@ umode_t beiscsi_attr_is_visible(int param_type, int param)
> >>>            case ISCSI_PARAM_LU_RESET_TMO:
> >>>            case ISCSI_PARAM_IFACE_NAME:
> >>>            case ISCSI_PARAM_INITIATOR_NAME:
> >>> +        case ISCSI_PARAM_NODE_STARTUP:
> >>>                return S_IRUGO;
> >>>            default:
> >>>                return 0;
> >>> diff --git a/drivers/scsi/bnx2i/bnx2i_iscsi.c b/drivers/scsi/bnx2i/bnx2i_iscsi.c
> >>> index a3c800e04a2e..d1fb06d8a92e 100644
> >>> --- a/drivers/scsi/bnx2i/bnx2i_iscsi.c
> >>> +++ b/drivers/scsi/bnx2i/bnx2i_iscsi.c
> >>> @@ -2237,6 +2237,7 @@ static umode_t bnx2i_attr_is_visible(int param_type, int param)
> >>>            case ISCSI_PARAM_BOOT_ROOT:
> >>>            case ISCSI_PARAM_BOOT_NIC:
> >>>            case ISCSI_PARAM_BOOT_TARGET:
> >>> +        case ISCSI_PARAM_NODE_STARTUP:
> >>>                return S_IRUGO;
> >>>            default:
> >>>                return 0;
> >>> diff --git a/drivers/scsi/cxgbi/libcxgbi.c b/drivers/scsi/cxgbi/libcxgbi.c
> >>> index af281e271f88..111b2ac78964 100644
> >>> --- a/drivers/scsi/cxgbi/libcxgbi.c
> >>> +++ b/drivers/scsi/cxgbi/libcxgbi.c
> >>> @@ -3063,6 +3063,7 @@ umode_t cxgbi_attr_is_visible(int param_type, int param)
> >>>            case ISCSI_PARAM_TGT_RESET_TMO:
> >>>            case ISCSI_PARAM_IFACE_NAME:
> >>>            case ISCSI_PARAM_INITIATOR_NAME:
> >>> +        case ISCSI_PARAM_NODE_STARTUP:
> >>>                return S_IRUGO;
> >>>            default:
> >>>                return 0;
> >>> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> >>> index 5fb1f364e815..47a73fb3e4b0 100644
> >>> --- a/drivers/scsi/iscsi_tcp.c
> >>> +++ b/drivers/scsi/iscsi_tcp.c
> >>> @@ -1036,6 +1036,7 @@ static umode_t iscsi_sw_tcp_attr_is_visible(int param_type, int param)
> >>>            case ISCSI_PARAM_TGT_RESET_TMO:
> >>>            case ISCSI_PARAM_IFACE_NAME:
> >>>            case ISCSI_PARAM_INITIATOR_NAME:
> >>> +        case ISCSI_PARAM_NODE_STARTUP:
> >>>                return S_IRUGO;
> >>>            default:
> >>>                return 0;
> >>> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> >>> index d95f4bcdeb2e..1f2b0a9a029e 100644
> >>> --- a/drivers/scsi/libiscsi.c
> >>> +++ b/drivers/scsi/libiscsi.c
> >>> @@ -3576,6 +3576,8 @@ int iscsi_set_param(struct iscsi_cls_conn *cls_conn,
> >>>            break;
> >>>        case ISCSI_PARAM_LOCAL_IPADDR:
> >>>            return iscsi_switch_str_param(&conn->local_ipaddr, buf);
> >>> +    case ISCSI_PARAM_NODE_STARTUP:
> >>> +        return iscsi_switch_str_param(&session->node_startup, buf);
> >>>        default:
> >>>            return -ENOSYS;
> >>>        }
> >>> @@ -3712,6 +3714,9 @@ int iscsi_session_get_param(struct iscsi_cls_session *cls_session,
> >>>            else
> >>>                len = sysfs_emit(buf, "\n");
> >>>            break;
> >>> +    case ISCSI_PARAM_NODE_STARTUP:
> >>> +        len = sysfs_emit(buf, "%s\n", session->node_startup);
> >>> +        break;
> >>>        default:
> >>>            return -ENOSYS;
> >>>        }
> >>> diff --git a/drivers/scsi/qedi/qedi_iscsi.c b/drivers/scsi/qedi/qedi_iscsi.c
> >>> index 31ec429104e2..b947a5bca380 100644
> >>> --- a/drivers/scsi/qedi/qedi_iscsi.c
> >>> +++ b/drivers/scsi/qedi/qedi_iscsi.c
> >>> @@ -1437,6 +1437,7 @@ static umode_t qedi_attr_is_visible(int param_type, int param)
> >>>            case ISCSI_PARAM_BOOT_ROOT:
> >>>            case ISCSI_PARAM_BOOT_NIC:
> >>>            case ISCSI_PARAM_BOOT_TARGET:
> >>> +        case ISCSI_PARAM_NODE_STARTUP:
> >>>                return 0444;
> >>>            default:
> >>>                return 0;
> >>> diff --git a/drivers/scsi/qla4xxx/ql4_os.c b/drivers/scsi/qla4xxx/ql4_os.c
> >>> index 9e849f6b0d0f..1cb7c6dbe9d3 100644
> >>> --- a/drivers/scsi/qla4xxx/ql4_os.c
> >>> +++ b/drivers/scsi/qla4xxx/ql4_os.c
> >>> @@ -468,6 +468,7 @@ static umode_t qla4_attr_is_visible(int param_type, int param)
> >>>            case ISCSI_PARAM_DISCOVERY_PARENT_IDX:
> >>>            case ISCSI_PARAM_DISCOVERY_PARENT_TYPE:
> >>>            case ISCSI_PARAM_LOCAL_IPADDR:
> >>> +        case ISCSI_PARAM_NODE_STARTUP:
> >>>                return S_IRUGO;
> >>>            default:
> >>>                return 0;
> >>> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> >>> index c3fe5ecfee59..39c14d2a8aad 100644
> >>> --- a/drivers/scsi/scsi_transport_iscsi.c
> >>> +++ b/drivers/scsi/scsi_transport_iscsi.c
> >>> @@ -4367,6 +4367,7 @@ iscsi_session_attr(tsid, ISCSI_PARAM_TSID, 0);
> >>>    iscsi_session_attr(def_taskmgmt_tmo, ISCSI_PARAM_DEF_TASKMGMT_TMO, 0);
> >>>    iscsi_session_attr(discovery_parent_idx, ISCSI_PARAM_DISCOVERY_PARENT_IDX, 0);
> >>>    iscsi_session_attr(discovery_parent_type, ISCSI_PARAM_DISCOVERY_PARENT_TYPE, 0);
> >>> +iscsi_session_attr(node_startup, ISCSI_PARAM_NODE_STARTUP, 0);
> >>>      static ssize_t
> >>>    show_priv_session_state(struct device *dev, struct device_attribute *attr,
> >>> @@ -4488,6 +4489,7 @@ static struct attribute *iscsi_session_attrs[] = {
> >>>        &dev_attr_sess_def_taskmgmt_tmo.attr,
> >>>        &dev_attr_sess_discovery_parent_idx.attr,
> >>>        &dev_attr_sess_discovery_parent_type.attr,
> >>> +    &dev_attr_sess_node_startup.attr,
> >>>        NULL,
> >>>    };
> >>>    @@ -4587,6 +4589,8 @@ static umode_t iscsi_session_attr_is_visible(struct kobject *kobj,
> >>>            return S_IRUGO;
> >>>        else if (attr == &dev_attr_priv_sess_target_id.attr)
> >>>            return S_IRUGO;
> >>> +    else if (attr == &dev_attr_sess_node_startup.attr)
> >>> +        param = ISCSI_PARAM_NODE_STARTUP;
> >>>        else {
> >>>            WARN_ONCE(1, "Invalid session attr");
> >>>            return 0;
> >>> diff --git a/include/scsi/iscsi_if.h b/include/scsi/iscsi_if.h
> >>> index 5225a23f2d0e..e46e69c1fd02 100644
> >>> --- a/include/scsi/iscsi_if.h
> >>> +++ b/include/scsi/iscsi_if.h
> >>> @@ -610,6 +610,7 @@ enum iscsi_param {
> >>>        ISCSI_PARAM_DISCOVERY_PARENT_IDX,
> >>>        ISCSI_PARAM_DISCOVERY_PARENT_TYPE,
> >>>        ISCSI_PARAM_LOCAL_IPADDR,
> >>> +    ISCSI_PARAM_NODE_STARTUP,
> >>>        /* must always be last */
> >>>        ISCSI_PARAM_MAX,
> >>>    };
> >>> diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
> >>> index 654cc3918c94..af4ccdcc1140 100644
> >>> --- a/include/scsi/libiscsi.h
> >>> +++ b/include/scsi/libiscsi.h
> >>> @@ -327,6 +327,7 @@ struct iscsi_session {
> >>>        char            *boot_target;
> >>>        char            *portal_type;
> >>>        char            *discovery_parent_type;
> >>> +    char            *node_startup;
> >>>        uint16_t        discovery_parent_idx;
> >>>        uint16_t        def_taskmgmt_tmo;
> >>>        uint16_t        tsid;
> >>
> >> The iscsiadm/iscsid tools refuse to logout of an ONBOOT session.
> >>
> >
> > Sorry I did not highlight the key points. The root reason we need to record
> > node_startup mode in kernel is userspace's node_startup mode is unreliable in
> > some scenarios:
> >
> > 1. iscsi node and session is created in initrd, the configure files of these
> >     nodes would be lost after we switch to rootfs
>
> That is not my experience. When I boot from iscsi root, after the system
> is running, if I tell the iscsiadm to logout of the root iscsi target it
> refuses. I will test again to verify.
>
> > 2. someone do iscsiadm -m discovery but did not specify the operation mode,
> >     the iscsi node's node_startup would be updated to which specified in iscsid.conf
>
> The default on iscsiadm discovery mode is to replace the info on a
> discovered target, but there are other modes. And they don't effect the
> current (root) session.
>
> > 3. someone do iscsiadm -m node -o update to update nodes' configure
>
> Again, does not effect the currently-running session, and can be
> considered shooting oneself in the foot.
>
> >
> > What's more, it seems "iscsiadm/iscsid" only refuse to logout of an ONBOOT
> > session when logout is specificed by "--logoutall". We still can logout an
> > ONBOOT session with "iscsiadm -m node -u comamnd".
>
> Again, I don't believe that's correct. I will test it.
>
> >
> > Based on these analysis, I think we should record the node_startup mode in kernel
> > and check in userspace to avoid logout ONBOOT sessions.
>
I cloned the source code from github and built to test.
Here is my brief test steps:

1. discovery an iSCSI node and login, the default startup
   mode is manual
2. using iscsiadm -m node -o update command to update
   the startup mode to onboot(it did not refused)
3. logout the session with iscsiadm -m node -u
   the logout succeed too.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAOptpSO%3DBEGWFkzT2umFXnWSyn24XR5nHc-mnTvsVb6PAn%3D4xA%40mail.gmail.com.
