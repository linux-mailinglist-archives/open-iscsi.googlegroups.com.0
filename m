Return-Path: <open-iscsi+bncBC755V5RXMKBBV5LW74QKGQEKIQEU5I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C0423F4E2
	for <lists+open-iscsi@lfdr.de>; Sat,  8 Aug 2020 00:29:44 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id i25sf1870758ooe.14
        for <lists+open-iscsi@lfdr.de>; Fri, 07 Aug 2020 15:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=y2HMR/jPC1nVP4hpH8uvWnSSmeEfvmwWSnIdaulcGu4=;
        b=ko0O63aPraWL8sBOjRTCIZMGJ4nyXeYWv7BC0qOAEu0ZO6PUMzRB3r/t3y6mzeKwTF
         w0+akxt2Ke+IxFPjt9opxhMPmYFEjm3iWQpvthHy2YsQ6XZTS6OI2pfG/8qRq/XNthNe
         4YAA2FytOqLTnG38UDY5+uOJxZCLoAt+w7WZ1bdgNZMxhwo70eE4W15tJ+mbeTXykh3K
         TGADkRaRhMBF1J2NJrO1RnMGTQdQh/qxh12zdO40xTsmqmPxt+NdiMnrvYQS4BhUT7o+
         pySJbBZhY7qiCCLzlbT9BBcVlimNB2aZ6TxCemN+IgIcqKeO2PFyHl+WNxlsrymJwSHp
         7Myg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y2HMR/jPC1nVP4hpH8uvWnSSmeEfvmwWSnIdaulcGu4=;
        b=sJVn7+x6zb0nkhCq8XrX+VlTJX6pSfp4JaBg/9h1bTJVfsIfoychBSZ5n8nGV7pacf
         GTVQ8OTZxeqxKsyERaGV2VervoJurxOidMQJVG0tyTjGaod9MblFuhzyg3NPywSeoBwd
         rcCEdzrmgA9bMZ9uDfQ6QIlF6WVyafXIno40gyhTGmpgg0SQMMeVkaxvyMJDZ0vo2Bo7
         +LZlvIUNcHsdXv777l80FfExtiWBcesawhXz1AlLqKfi6ezigyypyUevT83e0IPwbnav
         ucxXIcspbLfAMnbBbWyccOQXp1LREwj9Z4jE1dmJStnVHzXxkb0eIk+iVyBWvKzo0gAG
         rItg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y2HMR/jPC1nVP4hpH8uvWnSSmeEfvmwWSnIdaulcGu4=;
        b=bQecY9anUsAgskG0M4msyh1uF2mUpaaZBmJ/PqfKPHIENfeIJ/LNdRtlyyGa2vN5o3
         uoGays7dWA1wiAHutJdfmX2rJ2+fuWZ+giihEOoriPXbr+FK16ueO4XD1z3QOeBHhy2d
         nfqCe09A0dxwJxnfs/Bk2lzbMGw20SJ7TSUWNGi2A53ZMlJNhSsekISn5PQJNTZ7wzDR
         BQnOyxCDkcKl29W8gr8uCibMHOfdbj5Rl6QS0i0MRM8u39CHtnDlQhQTeTHKxRz77imx
         JwI+p+uahQSbZ1S+eXg4ByYhxa0hmU5ZDB6AxEwDztQtCzyszBAM4NKP/uHgWcTmF9sB
         rXHA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532QjgOVFYyHW1/tIE/ANlQtlFwT8KQZILlT7kcvZnIeIdeYLkb0
	o9Qx7ib0L8Q0uyM7maPZAgs=
X-Google-Smtp-Source: ABdhPJz0ppwJSkYi6HVP5zz+k9ctgw1UKaUlpSspwY166VOetkZjl906vdQSxt4TikDS2K8ke5mPNA==
X-Received: by 2002:aca:d01:: with SMTP id 1mr12471601oin.161.1596839383627;
        Fri, 07 Aug 2020 15:29:43 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:8c0d:: with SMTP id u13ls703901ooj.7.gmail; Fri, 07 Aug
 2020 15:29:43 -0700 (PDT)
X-Received: by 2002:a4a:924b:: with SMTP id g11mr14722916ooh.9.1596839383129;
        Fri, 07 Aug 2020 15:29:43 -0700 (PDT)
Date: Fri, 7 Aug 2020 15:29:42 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <2d53d3d8-c253-422c-9a51-edfe778390dao@googlegroups.com>
In-Reply-To: <20200727024340.163937-1-jingxiangfeng@huawei.com>
References: <20200727024340.163937-1-jingxiangfeng@huawei.com>
Subject: Re: [PATCH] scsi: iscsi: jump to correct label in an error path
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_453_680225926.1596839382547"
X-Original-Sender: leeman.duncan@gmail.com
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

------=_Part_453_680225926.1596839382547
Content-Type: multipart/alternative; 
	boundary="----=_Part_454_1339109418.1596839382547"

------=_Part_454_1339109418.1596839382547
Content-Type: text/plain; charset="UTF-8"

On Sunday, July 26, 2020 at 7:40:48 PM UTC-7, Jing Xiangfeng wrote:
>
> In current code, it jumps to put_host() when scsi_host_lookup() 
> failes to get host. Jump to correct label to fix it. 
>
> Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com> 
> --- 
>  drivers/scsi/scsi_transport_iscsi.c | 11 +++++------ 
>  1 file changed, 5 insertions(+), 6 deletions(-) 
>
> diff --git a/drivers/scsi/scsi_transport_iscsi.c 
> b/drivers/scsi/scsi_transport_iscsi.c 
> index 7ae5024..5984596 100644 
> --- a/drivers/scsi/scsi_transport_iscsi.c 
> +++ b/drivers/scsi/scsi_transport_iscsi.c 
> @@ -3341,7 +3341,7 @@ static int iscsi_new_flashnode(struct 
> iscsi_transport *transport, 
>                  pr_err("%s could not find host no %u\n", 
>                         __func__, ev->u.new_flashnode.host_no); 
>                  err = -ENODEV; 
> -                goto put_host; 
> +                goto exit_new_fnode; 
>          } 
>   
>          index = transport->new_flashnode(shost, data, len); 
> @@ -3351,7 +3351,6 @@ static int iscsi_new_flashnode(struct 
> iscsi_transport *transport, 
>          else 
>                  err = -EIO; 
>   
> -put_host: 
>          scsi_host_put(shost); 
>   
>  exit_new_fnode: 
> @@ -3376,7 +3375,7 @@ static int iscsi_del_flashnode(struct 
> iscsi_transport *transport, 
>                  pr_err("%s could not find host no %u\n", 
>                         __func__, ev->u.del_flashnode.host_no); 
>                  err = -ENODEV; 
> -                goto put_host; 
> +                goto exit_del_fnode; 
>          } 
>   
>          idx = ev->u.del_flashnode.flashnode_idx; 
> @@ -3418,7 +3417,7 @@ static int iscsi_login_flashnode(struct 
> iscsi_transport *transport, 
>                  pr_err("%s could not find host no %u\n", 
>                         __func__, ev->u.login_flashnode.host_no); 
>                  err = -ENODEV; 
> -                goto put_host; 
> +                goto exit_login_fnode; 
>          } 
>   
>          idx = ev->u.login_flashnode.flashnode_idx; 
> @@ -3470,7 +3469,7 @@ static int iscsi_logout_flashnode(struct 
> iscsi_transport *transport, 
>                  pr_err("%s could not find host no %u\n", 
>                         __func__, ev->u.logout_flashnode.host_no); 
>                  err = -ENODEV; 
> -                goto put_host; 
> +                goto exit_logout_fnode; 
>          } 
>   
>          idx = ev->u.logout_flashnode.flashnode_idx; 
> @@ -3520,7 +3519,7 @@ static int iscsi_logout_flashnode_sid(struct 
> iscsi_transport *transport, 
>                  pr_err("%s could not find host no %u\n", 
>                         __func__, ev->u.logout_flashnode.host_no); 
>                  err = -ENODEV; 
> -                goto put_host; 
> +                goto exit_logout_sid; 
>          } 
>   
>          session = iscsi_session_lookup(ev->u.logout_flashnode_sid.sid); 
> -- 
> 1.8.3.1 
>

Reviewed-by: Lee Duncan <lduncan@suse.com> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/2d53d3d8-c253-422c-9a51-edfe778390dao%40googlegroups.com.

------=_Part_454_1339109418.1596839382547
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+T24gU3VuZGF5LCBKdWx5IDI2LCAyMDIwIGF0IDc6NDA6NDggUE0gVVRD
LTcsIEppbmcgWGlhbmdmZW5nIHdyb3RlOjxibG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIg
c3R5bGU9Im1hcmdpbjogMDttYXJnaW4tbGVmdDogMC44ZXg7Ym9yZGVyLWxlZnQ6IDFweCAjY2Nj
IHNvbGlkO3BhZGRpbmctbGVmdDogMWV4OyI+SW4gY3VycmVudCBjb2RlLCBpdCBqdW1wcyB0byBw
dXRfaG9zdCgpIHdoZW4gc2NzaV9ob3N0X2xvb2t1cCgpDQo8YnI+ZmFpbGVzIHRvIGdldCBob3N0
LiBKdW1wIHRvIGNvcnJlY3QgbGFiZWwgdG8gZml4IGl0Lg0KPGJyPg0KPGJyPlNpZ25lZC1vZmYt
Ynk6IEppbmcgWGlhbmdmZW5nICZsdDs8YSBocmVmPSJtYWlsdG86amluZ3hpYW5nZmVuZ0BodWF3
ZWkuY29tIiB0YXJnZXQ9Il9ibGFuayIgcmVsPSJub2ZvbGxvdyIgb25tb3VzZWRvd249InRoaXMu
aHJlZj0mIzM5O21haWx0bzpqaW5neGlhbmdmZW5nQGh1YXdlaS5jb20mIzM5OztyZXR1cm4gdHJ1
ZTsiIG9uY2xpY2s9InRoaXMuaHJlZj0mIzM5O21haWx0bzpqaW5neGlhbmdmZW5nQGh1YXdlaS5j
b20mIzM5OztyZXR1cm4gdHJ1ZTsiPmppbmd4aWFuZ2ZlbmdAaHVhd2VpLmNvbTwvYT4mZ3Q7DQo8
YnI+LS0tDQo8YnI+wqBkcml2ZXJzL3Njc2kvc2NzaV90cmFuc3BvcnRfPHdicj5pc2NzaS5jIHwg
MTEgKysrKystLS0tLS0NCjxicj7CoDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pDQo8YnI+DQo8YnI+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc2NzaS9zY3NpX3Ry
YW5zcG9ydF88d2JyPmlzY3NpLmMgYi9kcml2ZXJzL3Njc2kvc2NzaV90cmFuc3BvcnRfPHdicj5p
c2NzaS5jDQo8YnI+aW5kZXggN2FlNTAyNC4uNTk4NDU5NiAxMDA2NDQNCjxicj4tLS0gYS9kcml2
ZXJzL3Njc2kvc2NzaV90cmFuc3BvcnRfPHdicj5pc2NzaS5jDQo8YnI+KysrIGIvZHJpdmVycy9z
Y3NpL3Njc2lfdHJhbnNwb3J0Xzx3YnI+aXNjc2kuYw0KPGJyPkBAIC0zMzQxLDcgKzMzNDEsNyBA
QCBzdGF0aWMgaW50IGlzY3NpX25ld19mbGFzaG5vZGUoc3RydWN0IGlzY3NpX3RyYW5zcG9ydCAq
dHJhbnNwb3J0LA0KPGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwcl9lcnIo
JnF1b3Q7JXMgY291bGQgbm90IGZpbmQgaG9zdCBubyAldVxuJnF1b3Q7LA0KPGJyPsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgwqAgwqAgwqAgX19mdW5jX18sIGV2LSZndDt1Lm5l
d19mbGFzaG5vZGUuaG9zdF9ubyk7DQo8YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGVyciA9IC1FTk9ERVY7DQo8YnI+LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
Z290byBwdXRfaG9zdDsNCjxicj4rwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3Rv
IGV4aXRfbmV3X2Zub2RlOw0KPGJyPsKgwqDCoMKgwqDCoMKgwqDCoH0NCjxicj7CoA0KPGJyPsKg
wqDCoMKgwqDCoMKgwqDCoGluZGV4ID0gdHJhbnNwb3J0LSZndDtuZXdfZmxhc2hub2RlKDx3YnI+
c2hvc3QsIGRhdGEsIGxlbik7DQo8YnI+QEAgLTMzNTEsNyArMzM1MSw2IEBAIHN0YXRpYyBpbnQg
aXNjc2lfbmV3X2ZsYXNobm9kZShzdHJ1Y3QgaXNjc2lfdHJhbnNwb3J0ICp0cmFuc3BvcnQsDQo8
YnI+wqDCoMKgwqDCoMKgwqDCoMKgZWxzZQ0KPGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBlcnIgPSAtRUlPOw0KPGJyPsKgDQo8YnI+LXB1dF9ob3N0Og0KPGJyPsKgwqDCoMKg
wqDCoMKgwqDCoHNjc2lfaG9zdF9wdXQoc2hvc3QpOw0KPGJyPsKgDQo8YnI+wqBleGl0X25ld19m
bm9kZToNCjxicj5AQCAtMzM3Niw3ICszMzc1LDcgQEAgc3RhdGljIGludCBpc2NzaV9kZWxfZmxh
c2hub2RlKHN0cnVjdCBpc2NzaV90cmFuc3BvcnQgKnRyYW5zcG9ydCwNCjxicj7CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcHJfZXJyKCZxdW90OyVzIGNvdWxkIG5vdCBmaW5kIGhv
c3Qgbm8gJXVcbiZxdW90OywNCjxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IMKgIMKgIMKgIF9fZnVuY19fLCBldi0mZ3Q7dS5kZWxfZmxhc2hub2RlLmhvc3Rfbm8pOw0KPGJy
PsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlcnIgPSAtRU5PREVWOw0KPGJyPi3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gcHV0X2hvc3Q7DQo8YnI+K8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ290byBleGl0X2RlbF9mbm9kZTsNCjxicj7CoMKg
wqDCoMKgwqDCoMKgwqB9DQo8YnI+wqANCjxicj7CoMKgwqDCoMKgwqDCoMKgwqBpZHggPSBldi0m
Z3Q7dS5kZWxfZmxhc2hub2RlLmZsYXNobm9kZV88d2JyPmlkeDsNCjxicj5AQCAtMzQxOCw3ICsz
NDE3LDcgQEAgc3RhdGljIGludCBpc2NzaV9sb2dpbl9mbGFzaG5vZGUoc3RydWN0IGlzY3NpX3Ry
YW5zcG9ydCAqdHJhbnNwb3J0LA0KPGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBwcl9lcnIoJnF1b3Q7JXMgY291bGQgbm90IGZpbmQgaG9zdCBubyAldVxuJnF1b3Q7LA0KPGJy
PsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgwqAgwqAgwqAgX19mdW5jX18sIGV2
LSZndDt1LmxvZ2luX2ZsYXNobm9kZS5ob3N0X25vKTx3YnI+Ow0KPGJyPsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBlcnIgPSAtRU5PREVWOw0KPGJyPi3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGdvdG8gcHV0X2hvc3Q7DQo8YnI+K8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgZ290byBleGl0X2xvZ2luX2Zub2RlOw0KPGJyPsKgwqDCoMKgwqDCoMKgwqDC
oH0NCjxicj7CoA0KPGJyPsKgwqDCoMKgwqDCoMKgwqDCoGlkeCA9IGV2LSZndDt1LmxvZ2luX2Zs
YXNobm9kZS48d2JyPmZsYXNobm9kZV9pZHg7DQo8YnI+QEAgLTM0NzAsNyArMzQ2OSw3IEBAIHN0
YXRpYyBpbnQgaXNjc2lfbG9nb3V0X2ZsYXNobm9kZShzdHJ1Y3QgaXNjc2lfdHJhbnNwb3J0ICp0
cmFuc3BvcnQsDQo8YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHByX2Vycigm
cXVvdDslcyBjb3VsZCBub3QgZmluZCBob3N0IG5vICV1XG4mcXVvdDssDQo8YnI+wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDCoCDCoCDCoCBfX2Z1bmNfXywgZXYtJmd0O3UubG9n
b3V0X2ZsYXNobm9kZS5ob3N0Xzx3YnI+bm8pOw0KPGJyPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBlcnIgPSAtRU5PREVWOw0KPGJyPi3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGdvdG8gcHV0X2hvc3Q7DQo8YnI+K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgZ290byBleGl0X2xvZ291dF9mbm9kZTsNCjxicj7CoMKgwqDCoMKgwqDCoMKgwqB9DQo8YnI+
wqANCjxicj7CoMKgwqDCoMKgwqDCoMKgwqBpZHggPSBldi0mZ3Q7dS5sb2dvdXRfZmxhc2hub2Rl
Ljx3YnI+Zmxhc2hub2RlX2lkeDsNCjxicj5AQCAtMzUyMCw3ICszNTE5LDcgQEAgc3RhdGljIGlu
dCBpc2NzaV9sb2dvdXRfZmxhc2hub2RlX3NpZCg8d2JyPnN0cnVjdCBpc2NzaV90cmFuc3BvcnQg
KnRyYW5zcG9ydCwNCjxicj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcHJfZXJy
KCZxdW90OyVzIGNvdWxkIG5vdCBmaW5kIGhvc3Qgbm8gJXVcbiZxdW90OywNCjxicj7CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgIMKgIMKgIF9fZnVuY19fLCBldi0mZ3Q7dS5s
b2dvdXRfZmxhc2hub2RlLmhvc3RfPHdicj5ubyk7DQo8YnI+wqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGVyciA9IC1FTk9ERVY7DQo8YnI+LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZ290byBwdXRfaG9zdDsNCjxicj4rwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBnb3RvIGV4aXRfbG9nb3V0X3NpZDsNCjxicj7CoMKgwqDCoMKgwqDCoMKgwqB9DQo8YnI+
wqANCjxicj7CoMKgwqDCoMKgwqDCoMKgwqBzZXNzaW9uID0gaXNjc2lfc2Vzc2lvbl9sb29rdXAo
ZXYtJmd0O3UuPHdicj5sb2dvdXRfZmxhc2hub2RlX3NpZC5zaWQpOw0KPGJyPi0tIA0KPGJyPjEu
OC4zLjENCjxicj48L2Jsb2NrcXVvdGU+PGRpdj48YnI+PC9kaXY+PGRpdj5SZXZpZXdlZC1ieTog
TGVlIER1bmNhbiAmbHQ7bGR1bmNhbkBzdXNlLmNvbSZndDsgPGJyPjwvZGl2PjwvZGl2Pg0KDQo8
cD48L3A+CgotLSA8YnIgLz4KWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBh
cmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAmcXVvdDtvcGVuLWlzY3NpJnF1b3Q7
IGdyb3VwLjxiciAvPgpUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVj
ZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRvIDxhIGhyZWY9Im1haWx0bzpv
cGVuLWlzY3NpK3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb20iPm9wZW4taXNjc2krdW5zdWJz
Y3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbTwvYT4uPGJyIC8+ClRvIHZpZXcgdGhpcyBkaXNjdXNzaW9u
IG9uIHRoZSB3ZWIgdmlzaXQgPGEgaHJlZj0iaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21z
Z2lkL29wZW4taXNjc2kvMmQ1M2QzZDgtYzI1My00MjJjLTlhNTEtZWRmZTc3ODM5MGRhbyU0MGdv
b2dsZWdyb3Vwcy5jb20/dXRtX21lZGl1bT1lbWFpbCZ1dG1fc291cmNlPWZvb3RlciI+aHR0cHM6
Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL29wZW4taXNjc2kvMmQ1M2QzZDgtYzI1My00MjJj
LTlhNTEtZWRmZTc3ODM5MGRhbyU0MGdvb2dsZWdyb3Vwcy5jb208L2E+LjxiciAvPgo=
------=_Part_454_1339109418.1596839382547--

------=_Part_453_680225926.1596839382547--
